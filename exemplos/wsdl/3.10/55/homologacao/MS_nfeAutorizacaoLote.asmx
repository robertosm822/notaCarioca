<?xml version="1.0" encoding="UTF-8"?>
HTTP/1.1 200 OK
Server: GlassFish Server Open Source Edition  4.1 
Server: grizzly/2.3.15
Content-Type: text/xml;charset=utf-8
Date: Tue, 21 Oct 2014 18:46:01 GMT
Transfer-Encoding: chunked

<?xml version='1.0' encoding='UTF-8'?><!-- Published by JAX-WS RI (http://jax-ws.java.net). RI's version is Metro/2.3.1-b419 (branches/2.3.1.x-7937; 2014-08-04T08:11:03+0000) JAXWS-RI/2.2.10-b140803.1500 JAXWS-API/2.2.11 JAXB-RI/2.2.10-b140802.1033 JAXB-API/2.2.12-b140109.1041 svn-revision#unknown. --><!-- Generated by JAX-WS RI (http://jax-ws.java.net). RI's version is Metro/2.3.1-b419 (branches/2.3.1.x-7937; 2014-08-04T08:11:03+0000) JAXWS-RI/2.2.10-b140803.1500 JAXWS-API/2.2.11 JAXB-RI/2.2.10-b140802.1033 JAXB-API/2.2.12-b140109.1041 svn-revision#unknown. --><definitions xmlns:wsu="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd" xmlns:wsp="http://www.w3.org/ns/ws-policy" xmlns:wsp1_2="http://schemas.xmlsoap.org/ws/2004/09/policy" xmlns:wsam="http://www.w3.org/2007/05/addressing/metadata" xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:tns="http://www.portalfiscal.inf.br/nfe/wsdl/NfeAutorizacao" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns="http://schemas.xmlsoap.org/wsdl/" targetNamespace="http://www.portalfiscal.inf.br/nfe/wsdl/NfeAutorizacao" name="NfeAutorizacao">
<types>
<xsd:schema>
<xsd:import namespace="http://www.portalfiscal.inf.br/nfe/wsdl/NfeAutorizacao" schemaLocation="https://homologacao.nfe.ms.gov.br:443/homologacao/services2/NfeAutorizacao?xsd=1"/>
</xsd:schema>
</types>
<message name="nfeAutorizacaoLote">
<part name="nfeDadosMsg" element="tns:nfeDadosMsg"/>
<part name="nfeCabecMsg" element="tns:nfeCabecMsg"/>
</message>
<message name="nfeAutorizacaoLoteResponse">
<part name="nfeAutorizacaoLoteResult" element="tns:nfeAutorizacaoLoteResult"/>
<part name="nfeCabecMsg" element="tns:nfeCabecMsg"/>
</message>
<message name="nfeAutorizacaoLoteZip">
<part name="nfeDadosMsgZip" element="tns:nfeDadosMsgZip"/>
<part name="nfeCabecMsg" element="tns:nfeCabecMsg"/>
</message>
<message name="nfeAutorizacaoLoteZipResponse">
<part name="nfeAutorizacaoLoteResult" element="tns:nfeAutorizacaoLoteResult"/>
<part name="nfeCabecMsg" element="tns:nfeCabecMsg"/>
</message>
<portType name="NfeAutorizacaoSoap">
<operation name="nfeAutorizacaoLote" parameterOrder="nfeDadosMsg nfeCabecMsg">
<input wsam:Action="http://www.portalfiscal.inf.br/nfe/wsdl/NfeAutorizacao/nfeAutorizacaoLote" message="tns:nfeAutorizacaoLote"/>
<output wsam:Action="http://www.portalfiscal.inf.br/nfe/wsdl/NfeAutorizacao/NfeAutorizacaoSoap/nfeAutorizacaoLoteResponse" message="tns:nfeAutorizacaoLoteResponse"/>
</operation>
<operation name="nfeAutorizacaoLoteZip" parameterOrder="nfeDadosMsgZip nfeCabecMsg">
<input wsam:Action="http://www.portalfiscal.inf.br/nfe/wsdl/NfeAutorizacao/nfeAutorizacaoLoteZip" message="tns:nfeAutorizacaoLoteZip"/>
<output wsam:Action="http://www.portalfiscal.inf.br/nfe/wsdl/NfeAutorizacao/NfeAutorizacaoSoap/nfeAutorizacaoLoteZipResponse" message="tns:nfeAutorizacaoLoteZipResponse"/>
</operation>
</portType>
<binding name="nfeAutorizacaoSoap12Binding" type="tns:NfeAutorizacaoSoap">
<soap12:binding transport="http://schemas.xmlsoap.org/soap/http" style="document"/>
<operation name="nfeAutorizacaoLote">
<soap12:operation soapAction="http://www.portalfiscal.inf.br/nfe/wsdl/NfeAutorizacao/nfeAutorizacaoLote"/>
<input>
<soap12:body use="literal" parts="nfeDadosMsg"/>
<soap12:header message="tns:nfeAutorizacaoLote" part="nfeCabecMsg" use="literal"/>
</input>
<output>
<soap12:body use="literal" parts="nfeAutorizacaoLoteResult"/>
<soap12:header message="tns:nfeAutorizacaoLoteResponse" part="nfeCabecMsg" use="literal"/>
</output>
</operation>
<operation name="nfeAutorizacaoLoteZip">
<soap12:operation soapAction="http://www.portalfiscal.inf.br/nfe/wsdl/NfeAutorizacao/nfeAutorizacaoLoteZip"/>
<input>
<soap12:body use="literal" parts="nfeDadosMsgZip"/>
<soap12:header message="tns:nfeAutorizacaoLoteZip" part="nfeCabecMsg" use="literal"/>
</input>
<output>
<soap12:body use="literal" parts="nfeAutorizacaoLoteResult"/>
<soap12:header message="tns:nfeAutorizacaoLoteZipResponse" part="nfeCabecMsg" use="literal"/>
</output>
</operation>
</binding>
<service name="NfeAutorizacao">
<port name="nfeAutorizacaoSoap12" binding="tns:nfeAutorizacaoSoap12Binding">
<soap12:address location="https://homologacao.nfe.ms.gov.br:443/homologacao/services2/NfeAutorizacao"/>
</port>
</service>
</definitions>