package com.example.algamoney.api.config.property;

import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

/* Classes aninhadas para configuração de parâmetros de produção do 
 * Spring-Boot junto com application-prod.properties*/
@Component
@ConfigurationProperties("algamoney")
public class AlgamoneyApiProperty {
	
	private String originPermitida = "http://localhost:8000";
	
	//Getter e Setter originPermitida
	public String getOriginPermitida() {
		return originPermitida;
	}

	public void setOriginPermitida(String originPermitida) {
		this.originPermitida = originPermitida;
	}




	private final Seguranca seguranca = new Seguranca(); 
	
	//Getter de seguranca
	public Seguranca getSeguranca() {
		return seguranca;
	}
	
	
	
	
	public static class Seguranca {
		
		private boolean enableHttps;
		
		
		//Getters e Setters
		public boolean isEnableHttps() {
			return enableHttps;
		}

		public void setEnableHttps(boolean enableHttps) {
			this.enableHttps = enableHttps;
		}
		
	}

	
	
}
