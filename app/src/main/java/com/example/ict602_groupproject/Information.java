package com.example.ict602_groupproject;


import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;


public class Information {

    @SerializedName("id")
    @Expose
    public String id;
    @SerializedName("type_hazard")
    @Expose
    public String typeHazard;
    @SerializedName("timeDate_reported")
    @Expose
    public String timeDateReported;
    @SerializedName("reporter_name")
    @Expose
    public String reporterName;
    @SerializedName("hazard_location")
    @Expose
    public String hazardLocation;
    @SerializedName("hazard_desc")
    @Expose
    public String hazardDesc;
    @SerializedName("lat")
    @Expose
    public String lat;
    @SerializedName("lng")
    @Expose
    public String lng;

}
