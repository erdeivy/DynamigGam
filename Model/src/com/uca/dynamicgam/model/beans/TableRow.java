package com.uca.dynamicgam.model.beans;

import java.io.Serializable;

import java.util.HashMap;
import java.util.Map;

public class TableRow extends HashMap implements Serializable {
    @SuppressWarnings("compatibility:-7425466087448014429")
    private static final long serialVersionUID = 1L;
    Map contenido = new HashMap();

    public TableRow() {
        super();
    }

    @Override
    public Object get(Object p1) {
        return contenido.get(p1);
    }

    public void set(String key, Object valor) {
        contenido.put(key, valor);
    }
}
