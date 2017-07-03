package com.readbooks.aboutcontroller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/")
public class AboutController {

	@RequestMapping(value = "/introReadbooks")
	public String introReadbooks() {
		return "company/introcompany";
	}

	@RequestMapping(value = "/serviceAgreement")
	public String serviceAgreement() {
		return "company/serviceagreement";
	}

	@RequestMapping(value = "/collectiveAgreement")
	public String collectiveAgreement() {
		return "company/collectiveagreement";
	}

	@RequestMapping(value = "/siteMap")
	public String siteMap() {
		return "company/sitemap";
	}
}