package com.per.vo.map;

import java.io.Serializable;

/**
 * Created this file:
 *
 * @Author xiaobo.xiong
 * @Date 2017-10-26  10:49
 */
public class MapLocationInfo implements Serializable{

    private Double lat;

    private Double lon;

    public MapLocationInfo(Double lat, Double lon) {
        this.lat = lat;
        this.lon = lon;
    }

    public Double getLat() {
        return lat;
    }

    public void setLat(Double lat) {
        this.lat = lat;
    }

    public Double getLon() {
        return lon;
    }

    public void setLon(Double lon) {
        this.lon = lon;
    }

    public MapLocationInfo() {
    }
}
