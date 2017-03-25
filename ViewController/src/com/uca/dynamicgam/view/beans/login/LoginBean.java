package com.uca.dynamicgam.view.beans.login;

import com.uca.dynamicgam.view.utils.JSFUtils;

import java.io.IOException;

import javax.faces.application.FacesMessage;
import javax.faces.context.FacesContext;

import javax.security.auth.Subject;
import javax.security.auth.callback.CallbackHandler;
import javax.security.auth.login.FailedLoginException;
import javax.security.auth.login.LoginException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import weblogic.security.SimpleCallbackHandler;
import weblogic.security.services.Authentication;

import weblogic.servlet.security.ServletAuthentication;

import javax.faces.context.ExternalContext;
import javax.faces.context.FacesContext;
import javax.faces.event.ActionEvent;

import javax.security.auth.Subject;
import javax.security.auth.callback.CallbackHandler;

import javax.security.auth.login.FailedLoginException;
import javax.security.auth.login.LoginException;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import oracle.adf.share.logging.ADFLogger;
import oracle.adf.view.rich.component.rich.RichPopup;
import oracle.adf.view.rich.component.rich.input.RichInputText;

import weblogic.security.URLCallbackHandler;

public class LoginBean {
    private static ADFLogger _logger = ADFLogger.createADFLogger(LoginBean.class);
    private RichInputText userInput;
    private RichInputText passwordInput;

    public LoginBean() {
        super();
    }

    public void setUserInput(RichInputText userInput) {
        this.userInput = userInput;
    }

    public RichInputText getUserInput() {
        return userInput;
    }

    public void setPasswordInput(RichInputText passwordInput) {
        this.passwordInput = passwordInput;
    }

    public RichInputText getPasswordInput() {
        return passwordInput;
    }

    public String loginAction() {
        _logger.info("doLogin() Start");
        //null check the username and password
        String pass = (String) this.getPasswordInput().getValue();
        String user = (String) this.getUserInput().getValue();
        if (user != null && pass != null) {
            FacesContext fctx = FacesContext.getCurrentInstance();
            ExternalContext ectx = fctx.getExternalContext();
            HttpServletRequest request = (HttpServletRequest) ectx.getRequest();
            //Construct user login CallBackHandler - compiling username and login information
            CallbackHandler handler = new URLCallbackHandler(user, pass.getBytes());
            try {
                Subject sub = weblogic.security.services.Authentication.login(handler);
                weblogic.servlet.security.ServletAuthentication.runAs(sub, request);
                this.checkUserPrivilege();
                this.setUpCurrentUser();
                //Initiate authentication
                ServletAuthentication.generateNewSessionID(request);
                String successUrl = "/adfAuthentication?success_url=/faces/index.jsf";
                HttpServletResponse response = (HttpServletResponse) fctx.getExternalContext().getResponse();
                RequestDispatcher dispatcher = request.getRequestDispatcher(successUrl);
                dispatcher.forward(request, response);
                fctx.responseComplete();
            } catch (FailedLoginException fle) {
                invalidLogin(fle);
            } catch (LoginException le) {
                invalidLogin(le);
            } catch (Exception e) {
                invalidLogin(e);
            }
        } else {
            invalidLogin(null);
        }
        _logger.info("doLogin() End");
        return null;
    }

    private void invalidLogin(Exception e) {
        if (e != null) {
            _logger.severe("Login exception (" + e.getClass() + "):" + e.getMessage());
        }
        JSFUtils.addFacesErrorMessage("Incorrect login, please try again");
        getPasswordInput().setValue(null);
        JSFUtils.addPartialTarget(getPasswordInput());
    }

    private void checkUserPrivilege() {
    }

    private void setUpCurrentUser() {
    }

    public String logoutAction() {
        //Same behaviour as logout
        FacesContext facesContext = FacesContext.getCurrentInstance();
        ExternalContext ectx = facesContext.getExternalContext();
        try {
            String url = ectx.getRequestContextPath() + "/adfAuthentication?logout=true&end_url=/faces/login.jsf";
            ectx.redirect(url);
        } catch (IOException e) {
            _logger.severe("Error while trying to exit:");
            _logger.severe(e);
        }
        facesContext.responseComplete();
        return null;
    }
}
