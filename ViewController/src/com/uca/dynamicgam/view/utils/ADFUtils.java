package com.uca.dynamicgam.view.utils;

import java.util.ArrayList;
import java.util.List;

import java.util.Map;

import java.util.Set;

import javax.el.ELContext;
import javax.el.ExpressionFactory;
import javax.el.ValueExpression;

import javax.faces.FacesException;
import javax.faces.application.Application;
import javax.faces.application.FacesMessage;
import javax.faces.application.ViewHandler;
import javax.faces.component.UIComponent;
import javax.faces.component.UIViewRoot;
import javax.faces.context.FacesContext;
import javax.faces.model.SelectItem;
import javax.faces.el.ValueBinding;

import oracle.adf.controller.ControllerContext;
import oracle.adf.controller.TaskFlowContext;
import oracle.adf.controller.TaskFlowId;
import oracle.adf.controller.ViewPortContext;
import oracle.adf.model.BindingContext;
import oracle.adf.model.DataControlFrame;
import oracle.adf.model.binding.DCBindingContainer;
import oracle.adf.model.binding.DCIteratorBinding;
import oracle.adf.model.binding.DCParameter;
import oracle.adf.model.binding.DCDataControl;
import oracle.adf.share.ADFContext;
import oracle.adf.share.logging.ADFLogger;
import oracle.adf.view.rich.component.rich.RichPopup;
import oracle.adf.view.rich.context.AdfFacesContext;

import oracle.binding.AttributeBinding;
import oracle.binding.BindingContainer;
import oracle.binding.ControlBinding;
import oracle.binding.OperationBinding;

import oracle.jbo.ApplicationModule;
import oracle.jbo.Key;
import oracle.jbo.Row;
import oracle.jbo.uicli.binding.JUCtrlValueBinding;

// TODO dont forget deprecateted code is used here
@SuppressWarnings({ "deprecation" })
/**
 * A series of convenience functions for dealing with ADF Bindings.
 * Note: Updated for JDeveloper 11 and modified by Pitss
 *
 * @author Duncan Mills
 * @author Steve Muench
 *
 * $Id: ADFUtils.java 2513 2007-09-20 20:39:13Z ralsmith $.
 */
public class ADFUtils {

    public static final ADFLogger logger = ADFLogger.createADFLogger(ADFUtils.class);

    public static final String EL_SCOPE_NAME__BACKING = "backingBeanScope";
    public static final String EL_SCOPE_NAME__REQUEST = "requestScope";
    public static final String EL_SCOPE_NAME__VIEW = "viewScope";
    public static final String EL_SCOPE_NAME__PAGEFLOW = "pageFlowScope";
    public static final String EL_SCOPE_NAME__SESSION = "sessionScope";
    public static final String EL_SCOPE_NAME__APPLICATION = "applicationScope";


    public static final ADFLogger LOGGER = ADFLogger.createADFLogger(ADFUtils.class);

    /**
     * Get application module for an application module data control by name.
     * @param name application module data control name
     * @return ApplicationModule
     */
    public static ApplicationModule getApplicationModuleForDataControl(String name) {
        return (ApplicationModule) JSFUtils.resolveExpression("#{data." + name + ".dataProvider}");
    }

    /**
     * A convenience method for getting the value of a bound attribute in the
     * current page context programatically.
     * @param attributeName of the bound value in the pageDef
     * @return value of the attribute
     */
    public static Object getBoundAttributeValue(String attributeName) {
        Object response = null;
        Object attControlBindingObj = findControlBinding(attributeName);

        if (attControlBindingObj != null && attControlBindingObj instanceof AttributeBinding) {
            response = ((AttributeBinding) attControlBindingObj).getInputValue();
        }

        return response;
    }

    /**
     * A convenience method for setting the value of a bound attribute in the
     * context of the current page.
     * @param attributeName of the bound value in the pageDef
     * @param value to set
     */
    public static void setBoundAttributeValue(String attributeName, Object value) {
        findControlBinding(attributeName).setInputValue(value);
    }


    public static BindingContext getBindingContext() {
        return BindingContext.getCurrent();
    }

    public static BindingContainer getBindingContainer() {
        return getBindingContext().getCurrentBindingsEntry();
    }

    public static DCBindingContainer getBindings() {

        DCBindingContainer bindings = (DCBindingContainer) executeELExpression("#{bindings}");

        return bindings;
    }

    public static OperationBinding getOperationBinding(String operationName) {
        return getBindingContainer().getOperationBinding(operationName);
    }

    public static UIComponent findUIComponent(String componentName) {
        return getFacesContext().getViewRoot().findComponent(componentName);
    }

    public static void pushWarnMessage(String header, String detail) {
        FacesMessage msg = new FacesMessage(FacesMessage.SEVERITY_WARN, header, detail);
        getFacesContext().addMessage(null, msg);
    }

    public static TaskFlowId getTaskFlowId() {
        ControllerContext controllerContext = ControllerContext.getInstance();
        ViewPortContext currentViewPortCtx = controllerContext.getCurrentViewPort();
        TaskFlowContext taskFlowCtx = currentViewPortCtx.getTaskFlowContext();
        return taskFlowCtx.getTaskFlowId();
    }

    public static FacesContext getFacesContext() {
        return FacesContext.getCurrentInstance();
    }

    public static Application getApplication() {
        return getFacesContext().getApplication();
    }

    public static ExpressionFactory getExpressionFactory() {
        return getApplication().getExpressionFactory();
    }

    public static ELContext getELContext() {
        return getFacesContext().getELContext();
    }

    public static ControllerContext getControllerContext() {
        return ControllerContext.getInstance();
    }


    public static ViewPortContext getViewPortContext() {
        // TODO: Here are 2 different ViewPorts:
        // a) getCurrentViewPort and
        // b) getCurrentRootViewPort
        // what is the difference?!
        return getControllerContext().getCurrentViewPort();
    }


    //    public static ApplicationModule getApplicationModule(String amName) {
    //        // 1. Access the FacesContext
    //        FacesContext fc = getFacesContext();
    //        // 2. Create value binding for the #{data} EL expression
    //        ValueBinding vb = fc.getApplication().createValueBinding("#{data}");
    //        logger.info("Value Binding for data: " + vb); // TODO : change to finest or remove line
    //        // 3. Evaluate the value binding, casting the result to BindingContext
    //        if (vb != null) {
    //            BindingContext bc = (BindingContext)vb.getValue(fc);
    //            logger.info("BindigContext for data: " + bc); // TODO : change to finest or remove line
    //            // 4. Find the data control by name from the binding context
    //            if (bc != null) {
    //                DCDataControl dc = bc.findDataControl(amName);
    //                // 5. Access the application module data provider
    //                if (dc != null) {
    //                    if (dc.getDataProvider() != null) {
    //                        logger.finest("DCDataControl has DataProvider : " +
    //                                      dc.getDataProvider());
    //                    } else {
    //                        logger.info("DCDataControl had no DataProvider - trying initialize");
    //                        dc.initialize();
    //                    }
    //
    //
    //                    ApplicationModule am =
    //                        (ApplicationModule)dc.getDataProvider();
    //                    // 6. Cast the ApplicationModule to its client interface
    //                    return am;
    //                }
    //            }
    //        }
    //        return null;
    //    }

    private static void testDataControls() {
        FacesContext fc = getFacesContext();
        ADFContext adfCtx = ADFContext.getCurrent();
        ELContext ec = fc.getELContext();
        Map sScope = adfCtx.getSessionScope();
        Set keySet = sScope.keySet();
        Object[] keys = keySet.toArray();
        System.out.println("SessionScope map:");
        for (int i = 0; i < keys.length; i++) {
            System.out.println(i + " - session[" + keys[i] + "]: " + sScope.get(keys[i]));
        }
        System.out.println("SessionScopeMap END");
        BindingContext bc = (BindingContext) adfCtx.getSessionScope().get("data");
        DataControlFrame frame = bc.dataControlFrame();
        System.out.println("Default Policy Data Control: " + frame.getDefaultPolicy().getDataControl());
        String nlsDC = "NLSServiceDataControl";
        System.out.println("controlFrameFind(NLSServiceDataControl): " + frame.findDataControl(nlsDC));
        for (DCDataControl dcdc : frame.datacontrols()) {
            System.out.println("" + dcdc.toString());
        }

        ValueBinding vb = fc.getApplication().createValueBinding("#{data}");
        if (vb != null) {
            bc = fc.getApplication().evaluateExpressionGet(fc, "#{data}", BindingContext.class);
            for (DCDataControl dcdc : frame.datacontrols()) {
                System.out.println("" + dcdc.toString());
            }

        }
    }


    public static ApplicationModule getApplicationModule(String amName) {

        // TODO: remove this line and maybe the method also
        //        testDataControls();

        // 1. Access the FacesContext
        FacesContext fc = getFacesContext();
        // 2. Create value binding for the #{data} EL expression
        ////ValueBinding vb = fc.getApplication().createValueBinding("#{data}");
        BindingContext bc = (BindingContext) ADFContext.getCurrent().getSessionScope().get("data");
        //        logger.info("Value Binding for data: " + vb); // TODO : change to finest or remove line
        // 3. Evaluate the value binding, casting the result to BindingContext
        //        if (vb != null) {
        //            BindingContext bc = (BindingContext)vb.getValue(fc);
        logger.fine("BindigContext for data: " + bc);
        // 4. Find the data control by name from the binding context
        if (bc != null) {
            DCDataControl dc = null;

            dc = bc.findDataControl(amName);
            // 5. Access the application module data provider
            logger.fine("DCDataControl(" + amName + "): " + dc);
            if (dc != null) {
                Object dp = dc.getDataProvider();
                logger.fine("DataProvider: " + dp);
                if (dc.getDataProvider() != null) {
                    logger.finest("DCDataControl has DataProvider : " + dc.getDataProvider());
                } else {
                    logger.fine("DCDataControl had no DataProvider - trying initialize");
                    dc.initialize();
                }


                ApplicationModule am = (ApplicationModule) dc.getDataProvider();
                // 6. Cast the ApplicationModule to its client interface
                return am;
            }
        }
        //        }
        return null;
    }


    /**
     * Returns the bean with the name of the beanName argument in the given scope.
     * <p/>
     * The scope argument must have one of the following values:
     * <ul>
     *    <li>backingBeanScope (constant of this class: EL_SCOPE_NAME__BACKING)</li>
     *    <li>requestScope (constant of this class: EL_SCOPE_NAME__REQUEST)</li>
     *    <li>viewScope (constant of this class: EL_SCOPE_NAME__VIEW)</li>
     *    <li>pageFlowScope (constant of this class: EL_SCOPE_NAME__PAGEFLOW)</li>
     *    <li>sessionScope (constant of this class: EL_SCOPE_NAME__SESSION)</li>
     *    <li>applicationScope (constant of this class: EL_SCOPE_NAME__APPLICATION)</li>
     * </ul>
     *
     * @param beanName the name of the bean
     * @param scope the scope of the bean
     * @return the bean instance
     */
    public static Object getBeanFromScope(String beanName, String scope) {

        if (EL_SCOPE_NAME__BACKING.equalsIgnoreCase(scope) || EL_SCOPE_NAME__VIEW.equalsIgnoreCase(scope) ||
            EL_SCOPE_NAME__PAGEFLOW.equalsIgnoreCase(scope)) {
            return executeELExpression("#{" + scope + "." + beanName + "}");
        }

        return executeELExpression("#{" + beanName + "}");
    }


    /**
     * Executes the EL expression, which is provided as a String. This method returns <code>null</code>,
     * when the provided String does not obey the regular expression  "<code>^#\{.*\}$</code>"
     *
     * @param elExpression
     * @return result of the execution
     */
    public static Object executeELExpression(String elExpression) {
        //(simple) test, if that is really an EL expression. If not: return null.
        if (!elExpression.matches("^#\\{.*\\}$")) {
            return null;
        }

        ValueExpression elExpr = createValueExpression(elExpression);

        return elExpr.getValue(getELContext());
    }

    /**
     * creates a new ValueExpression from the provided EL expression string
     *
     * @param expression
     * @return
     */
    public static ValueExpression createValueExpression(String expression) {
        return getExpressionFactory().createValueExpression(getELContext(), expression, Object.class);
    }

    /**
     * Refreshs the current page
     */
    public static void refreshPage() {
        FacesContext fcontext = getFacesContext();
        String refreshpage = fcontext.getViewRoot().getViewId();
        ViewHandler viewHandler = getApplication().getViewHandler();
        UIViewRoot uiviewroot = viewHandler.createView(fcontext, refreshpage);
        uiviewroot.setViewId(refreshpage);
        fcontext.setViewRoot(uiviewroot);
    }


    public static String getViewId() {
        return getViewPortContext().getViewId();
    }

    public static Object getTaskFlowParameter(String paramName) {
        return AdfFacesContext.getCurrentInstance().getPageFlowScope().get(paramName);
    }

    public static Map<String, String> getTaskFlowMapParameter(String paramName) {
        return (Map<String, String>) AdfFacesContext.getCurrentInstance().getPageFlowScope().get(paramName);
    }

    /**
     * Returns the evaluated value of a pageDef parameter.
     * @param pageDefName reference to the page definition file of the page with the parameter
     * @param parameterName name of the pagedef parameter
     * @return evaluated value of the parameter as a String
     */
    public static Object getPageDefParameterValue(String pageDefName, String parameterName) {
        BindingContainer bindings = findBindingContainer(pageDefName);
        DCParameter param = ((DCBindingContainer) bindings).findParameter(parameterName);
        return param.getValue();
    }

    /**
     * Convenience method to find a DCControlBinding as an AttributeBinding
     * to get able to then call getInputValue() or setInputValue() on it.
     * @param bindingContainer binding container
     * @param attributeName name of the attribute binding.
     * @return the control value binding with the name passed in.
     *
     */
    public static AttributeBinding findControlBinding(BindingContainer bindingContainer, String attributeName) {
        if (attributeName != null) {
            if (bindingContainer != null) {
                ControlBinding ctrlBinding = bindingContainer.getControlBinding(attributeName);
                if (ctrlBinding instanceof AttributeBinding) {
                    return (AttributeBinding) ctrlBinding;
                }
            }
        }
        return null;
    }

    /**
     * Convenience method to find a DCControlBinding as a JUCtrlValueBinding
     * to get able to then call getInputValue() or setInputValue() on it.
     * @param attributeName name of the attribute binding.
     * @return the control value binding with the name passed in.
     *
     */
    public static AttributeBinding findControlBinding(String attributeName) {
        return findControlBinding(getBindingContainer(), attributeName);
    }

    //    /**
    //     * Return the current page's binding container.
    //     * @return the current page's binding container
    //     */
    //    public static BindingContainer getBindingContainer() {
    //        return (BindingContainer)JSFUtils.resolveExpression("#{bindings}");
    //    }

    /**
     * Return the Binding Container as a DCBindingContainer.
     * @return current binding container as a DCBindingContainer
     */
    public static DCBindingContainer getDCBindingContainer() {
        return (DCBindingContainer) getBindingContainer();
    }

    /**
     * Get List of ADF Faces SelectItem for an iterator binding.
     *
     * Uses the value of the 'valueAttrName' attribute as the key for
     * the SelectItem key.
     *
     * @param iteratorName ADF iterator binding name
     * @param valueAttrName name of the value attribute to use
     * @param displayAttrName name of the attribute from iterator rows to display
     * @return ADF Faces SelectItem for an iterator binding
     */
    public static List<SelectItem> selectItemsForIterator(String iteratorName, String valueAttrName,
                                                          String displayAttrName) {
        return selectItemsForIterator(findIterator(iteratorName), valueAttrName, displayAttrName);
    }

    /**
     * Get List of ADF Faces SelectItem for an iterator binding with description.
     *
     * Uses the value of the 'valueAttrName' attribute as the key for
     * the SelectItem key.
     *
     * @param iteratorName ADF iterator binding name
     * @param valueAttrName name of the value attribute to use
     * @param displayAttrName name of the attribute from iterator rows to display
     * @param descriptionAttrName name of the attribute to use for description
     * @return ADF Faces SelectItem for an iterator binding with description
     */
    public static List<SelectItem> selectItemsForIterator(String iteratorName, String valueAttrName,
                                                          String displayAttrName, String descriptionAttrName) {
        return selectItemsForIterator(findIterator(iteratorName), valueAttrName, displayAttrName, descriptionAttrName);
    }

    /**
     * Get List of attribute values for an iterator.
     * @param iteratorName ADF iterator binding name
     * @param valueAttrName value attribute to use
     * @return List of attribute values for an iterator
     */
    public static List attributeListForIterator(String iteratorName, String valueAttrName) {
        return attributeListForIterator(findIterator(iteratorName), valueAttrName);
    }

    /**
     * Get List of Key objects for rows in an iterator.
     * @param iteratorName iterabot binding name
     * @return List of Key objects for rows
     */
    public static List<Key> keyListForIterator(String iteratorName) {
        return keyListForIterator(findIterator(iteratorName));
    }

    /**
     * Get List of Key objects for rows in an iterator.
     * @param iter iterator binding
     * @return List of Key objects for rows
     */
    public static List<Key> keyListForIterator(DCIteratorBinding iter) {
        List<Key> attributeList = new ArrayList<Key>();
        for (Row r : iter.getAllRowsInRange()) {
            attributeList.add(r.getKey());
        }
        return attributeList;
    }

    /**
     * Get List of Key objects for rows in an iterator using key attribute.
     * @param iteratorName iterator binding name
     * @param keyAttrName name of key attribute to use
     * @return List of Key objects for rows
     */
    public static List<Key> keyAttrListForIterator(String iteratorName, String keyAttrName) {
        return keyAttrListForIterator(findIterator(iteratorName), keyAttrName);
    }

    /**
     * Get List of Key objects for rows in an iterator using key attribute.
     *
     * @param iter iterator binding
     * @param keyAttrName name of key attribute to use
     * @return List of Key objects for rows
     */
    public static List<Key> keyAttrListForIterator(DCIteratorBinding iter, String keyAttrName) {
        List<Key> attributeList = new ArrayList<Key>();
        for (Row r : iter.getAllRowsInRange()) {
            attributeList.add(new Key(new Object[] { r.getAttribute(keyAttrName) }));
        }
        return attributeList;
    }

    /**
     * Get a List of attribute values for an iterator.
     *
     * @param iter iterator binding
     * @param valueAttrName name of value attribute to use
     * @return List of attribute values
     */
    public static List attributeListForIterator(DCIteratorBinding iter, String valueAttrName) {
        List attributeList = new ArrayList();
        for (Row r : iter.getAllRowsInRange()) {
            attributeList.add(r.getAttribute(valueAttrName));
        }
        return attributeList;
    }

    /**
     * Find an iterator binding in the current binding container by name.
     *
     * @param name iterator binding name
     * @return iterator binding
     */
    public static DCIteratorBinding findIterator(String name) {
        DCIteratorBinding iter = getDCBindingContainer().findIteratorBinding(name);
        if (iter == null) {
            throw new RuntimeException("Iterator '" + name + "' not found");
        }
        return iter;
    }

    public static DCIteratorBinding findIterator(String bindingContainer, String iterator) {
        DCBindingContainer bindings = (DCBindingContainer) JSFUtils.resolveExpression("#{" + bindingContainer + "}");
        if (bindings == null) {
            throw new RuntimeException("Binding container '" + bindingContainer + "' not found");
        }
        DCIteratorBinding iter = bindings.findIteratorBinding(iterator);
        if (iter == null) {
            throw new RuntimeException("Iterator '" + iterator + "' not found");
        }
        return iter;
    }

    public static JUCtrlValueBinding findCtrlBinding(String name) {
        JUCtrlValueBinding rowBinding = (JUCtrlValueBinding) getDCBindingContainer().findCtrlBinding(name);
        if (rowBinding == null) {
            throw new RuntimeException("CtrlBinding " + name + "' not found");
        }
        return rowBinding;
    }

    /**
     * Find an operation binding in the current binding container by name.
     *
     * @param name operation binding name
     * @return operation binding
     */
    public static OperationBinding findOperation(String name) {
        OperationBinding op = getDCBindingContainer().getOperationBinding(name);
        if (op == null) {
            throw new RuntimeException("Operation '" + name + "' not found");
        }
        return op;
    }

    /**
     * Find an operation binding in the current binding container by name.
     *
     * @param bindingContianer binding container name
     * @param opName operation binding name
     * @return operation binding
     */
    public static OperationBinding findOperation(String bindingContianer, String opName) {
        DCBindingContainer bindings = (DCBindingContainer) JSFUtils.resolveExpression("#{" + bindingContianer + "}");
        if (bindings == null) {
            throw new RuntimeException("Binding container '" + bindingContianer + "' not found");
        }
        OperationBinding op = bindings.getOperationBinding(opName);
        if (op == null) {
            throw new RuntimeException("Operation '" + opName + "' not found");
        }
        return op;
    }

    /**
     * Get List of ADF Faces SelectItem for an iterator binding with description.
     *
     * Uses the value of the 'valueAttrName' attribute as the key for
     * the SelectItem key.
     *
     * @param iter ADF iterator binding
     * @param valueAttrName name of value attribute to use for key
     * @param displayAttrName name of the attribute from iterator rows to display
     * @param descriptionAttrName name of the attribute for description
     * @return ADF Faces SelectItem for an iterator binding with description
     */
    public static List<SelectItem> selectItemsForIterator(DCIteratorBinding iter, String valueAttrName,
                                                          String displayAttrName, String descriptionAttrName) {
        List<SelectItem> selectItems = new ArrayList<SelectItem>();
        for (Row r : iter.getAllRowsInRange()) {
            selectItems.add(new SelectItem(r.getAttribute(valueAttrName), (String) r.getAttribute(displayAttrName),
                                           (String) r.getAttribute(descriptionAttrName)));
        }
        return selectItems;
    }

    /**
     * Get List of ADF Faces SelectItem for an iterator binding.
     *
     * Uses the value of the 'valueAttrName' attribute as the key for
     * the SelectItem key.
     *
     * @param iter ADF iterator binding
     * @param valueAttrName name of value attribute to use for key
     * @param displayAttrName name of the attribute from iterator rows to display
     * @return ADF Faces SelectItem for an iterator binding
     */
    public static List<SelectItem> selectItemsForIterator(DCIteratorBinding iter, String valueAttrName,
                                                          String displayAttrName) {
        List<SelectItem> selectItems = new ArrayList<SelectItem>();
        for (Row r : iter.getAllRowsInRange()) {
            selectItems.add(new SelectItem(r.getAttribute(valueAttrName), (String) r.getAttribute(displayAttrName)));
        }
        return selectItems;
    }

    /**
     * Get List of ADF Faces SelectItem for an iterator binding.
     *
     * Uses the rowKey of each row as the SelectItem key.
     *
     * @param iteratorName ADF iterator binding name
     * @param displayAttrName name of the attribute from iterator rows to display
     * @return ADF Faces SelectItem for an iterator binding
     */
    public static List<SelectItem> selectItemsByKeyForIterator(String iteratorName, String displayAttrName) {
        return selectItemsByKeyForIterator(findIterator(iteratorName), displayAttrName);
    }

    /**
     * Get List of ADF Faces SelectItem for an iterator binding with discription.
     *
     * Uses the rowKey of each row as the SelectItem key.
     *
     * @param iteratorName ADF iterator binding name
     * @param displayAttrName name of the attribute from iterator rows to display
     * @param descriptionAttrName name of the attribute for description
     * @return ADF Faces SelectItem for an iterator binding with discription
     */
    public static List<SelectItem> selectItemsByKeyForIterator(String iteratorName, String displayAttrName,
                                                               String descriptionAttrName) {
        return selectItemsByKeyForIterator(findIterator(iteratorName), displayAttrName, descriptionAttrName);
    }

    /**
     * Get List of ADF Faces SelectItem for an iterator binding with discription.
     *
     * Uses the rowKey of each row as the SelectItem key.
     *
     * @param iter ADF iterator binding
     * @param displayAttrName name of the attribute from iterator rows to display
     * @param descriptionAttrName name of the attribute for description
     * @return ADF Faces SelectItem for an iterator binding with discription
     */
    public static List<SelectItem> selectItemsByKeyForIterator(DCIteratorBinding iter, String displayAttrName,
                                                               String descriptionAttrName) {
        List<SelectItem> selectItems = new ArrayList<SelectItem>();
        for (Row r : iter.getAllRowsInRange()) {
            selectItems.add(new SelectItem(r.getKey(), (String) r.getAttribute(displayAttrName),
                                           (String) r.getAttribute(descriptionAttrName)));
        }
        return selectItems;
    }

    /**
     * Get List of ADF Faces SelectItem for an iterator binding.
     *
     * Uses the rowKey of each row as the SelectItem key.
     *
     * @param iter ADF iterator binding
     * @param displayAttrName name of the attribute from iterator rows to display
     * @return List of ADF Faces SelectItem for an iterator binding
     */
    public static List<SelectItem> selectItemsByKeyForIterator(DCIteratorBinding iter, String displayAttrName) {
        List<SelectItem> selectItems = new ArrayList<SelectItem>();
        for (Row r : iter.getAllRowsInRange()) {
            selectItems.add(new SelectItem(r.getKey(), (String) r.getAttribute(displayAttrName)));
        }
        return selectItems;
    }

    /**
     * Find the BindingContainer for a page definition by name.
     *
     * Typically used to refer eagerly to page definition parameters. It is
     * not best practice to reference or set bindings in binding containers
     * that are not the one for the current page.
     *
     * @param pageDefName name of the page defintion XML file to use
     * @return BindingContainer ref for the named definition
     */
    private static BindingContainer findBindingContainer(String pageDefName) {
        BindingContext bctx = getDCBindingContainer().getBindingContext();
        BindingContainer foundContainer = bctx.findBindingContainer(pageDefName);
        return foundContainer;
    }

    public static void printOperationBindingExceptions(List opList) {
        if (opList != null && !opList.isEmpty()) {
            for (Object error : opList) {
                LOGGER.severe(error.toString());
            }
        }
    }

    /**
     * Add JSF error message. Severity is error by default.
     * @param msg error message string
     */
    public static void message(String msg) {
        FacesContext ctx = JSFUtils.getFacesContext();
        FacesMessage fm = new FacesMessage(msg);

        ctx.addMessage(null, fm);
    }


    /**
     * Returns the value of an Attribute of the given View Object Instance
     * @param appModule Application Module
     * @param attributeName whole attruibute name
     */
    public static Object getViewObjectAttribute(ApplicationModule appModule, String attributeName) {

        String name[] = attributeName.split("[.]");

        return appModule.findViewObject(name[0]).getCurrentRow().getAttribute(name[1]);

    }

    /**
     * Sets the value of an Attribute of the given View Object Instance
     * @param appModule Application Module
     * @param attributeName whole attribute name
     * @param value
     */
    public static void setViewObjectAttribute(ApplicationModule appModule, String attributeName, Object value) {

        String name[] = attributeName.split("[.]");

        appModule.findViewObject(name[0]).getCurrentRow().setAttribute(name[1], value);

    }

    /**
     * Method that invoke any operation of the operation bindings with return value and erros's control
     * @param operation
     * @return
     * @throws Exception
     */
    public static Object invokeOperationBinding(String operation) throws FacesException {
        Object result = null;
        OperationBinding op = getBindingContainer().getOperationBinding(operation);
        if (op != null) {
            result = op.execute();
            if (!op.getErrors().isEmpty()) {
                throw new FacesException("Error invoke operation binding :: '" + operation + "'.",
                                         (Throwable) op.getErrors().get(0));
            }
        } else {
            throw new FacesException("Check the operation : " + operation +
                                     " is correctly mapped in pageDef bindings.");
        }
        return result;
    }

    public static boolean isDirtyCurrentDataControl() {
        DCBindingContainer dcbc = getDCBindingContainer();
        if (dcbc != null && dcbc.getDataControl() != null) {
            return dcbc.getDataControl().isTransactionDirty();
        }
        return false;
    }

    public static boolean isModifiedCurrentDataControl() {
        DCBindingContainer dcbc = getDCBindingContainer();
        if (dcbc != null && dcbc.getDataControl() != null) {
            return dcbc.getDataControl().isTransactionModified();
        }
        return false;
    }

    public static void showPopup(RichPopup popup) {
        if (popup != null) {
            popup.show(new RichPopup.PopupHints());
        }
    }
}
