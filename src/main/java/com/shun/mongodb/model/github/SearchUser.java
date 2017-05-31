package com.shun.mongodb.model.github;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Getter;
import lombok.Setter;

import java.io.Serializable;
import java.util.List;

/**
 * Created by HunSeol on 2017. 5. 27..
 */
@Getter
@Setter
@JsonIgnoreProperties(ignoreUnknown = true)
public class SearchUser implements Serializable{
    @JsonProperty(value="browser")
    private String browser;

    @JsonProperty(value="ip")
    private String ip;

    @JsonProperty(value="appCodeName")
    private String appCodeName;

    @JsonProperty(value="appName")
    private String appName;

    @JsonProperty(value="appVersion")
    private String appVersion;

    @JsonProperty(value="cookieEnabled")
    private boolean cookieEnabled;

    @JsonProperty(value="platform")
    private String platform;

    @JsonProperty(value="productSub")
    private String productSub;

    @JsonProperty(value="vendor")
    private String vendor;

    @JsonProperty(value="location")
    private String location;

    @JsonProperty(value="language")
    private String language;

    @JsonProperty(value="languages")
    private List<String> languages;

}
