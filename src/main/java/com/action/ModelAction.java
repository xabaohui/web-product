package com.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.xabaohui.modules.product.bean.Model;
import com.xabaohui.modules.product.bean.ProductPropDefine;
import com.xabaohui.modules.product.service.ProductService;

public class ModelAction extends ActionSupport{
	private static final long serialVersionUID = 1L;
	private ProductService productService;
	private HttpServletRequest request = ServletActionContext.getRequest();
	private String modelName;
	private String spec1Name;
	private String spec1Values;
	private String spec2Name;
	private String spec2Values;
	
	private String propName;
	private String propType;
	private String propCode;
	private Integer modelId;
	private Integer propId;
	private Integer fieldRequired;
	private String defaultValue;
	private String promptMsg;
	private Integer width;
	private Integer maxLength;
	private String validateCode;
	private String dateType;
	private String options;
	private Integer height;
	
	/**
	 * 删除模型下的属性分类
	 * @return
	 */
	public String deletePropDefine(){
		try {
			productService.deletePropDefine(propId);
			return SUCCESS;
		} catch (Exception e) {
			this.addFieldError("errorMsg", e.getMessage());
			return INPUT;
		}
	}
	
	/**
	 * 添加模型下的属性定义
	 * @return
	 */
	public String addPropDefine(){
		try {
			ProductPropDefine define = new ProductPropDefine();
			define.setPropName(propName);
			define.setPropType(propType);
			define.setModelId(modelId);
			define.setDateType(dateType);
			define.setDefaultValue(defaultValue);
			define.setFieldRequired(fieldRequired);
			define.setHeight(height);
			define.setMaxLength(maxLength);
			define.setOptions(options);
			define.setPromptMsg(promptMsg);
			define.setValidateCode(validateCode);
			define.setPropCode(propCode);
			define.setWidth(width);
			productService.addPropDefine(define);
			return SUCCESS;
		} catch (Exception e) {
			this.addFieldError("errorMsg", e.getMessage());
			return INPUT;
		}
	}
	
	/**
	 * 修改属性定义时回显
	 * @return
	 */
	public String findPropEcho(){
		try {
			ProductPropDefine define = productService.findPropEcho(propId);
			request.setAttribute("define", define);
			return SUCCESS;
		} catch (Exception e) {
			this.addFieldError("errorMsg", e.getMessage());
			return INPUT;
		}
	}
	
	/**
	 * 修改属性定义
	 * @return
	 */
	public String updatePropDefine(){
		try {
			ProductPropDefine define = productService.findPropEcho(propId);
			define.setPropName(propName);
			define.setPropType(propType);
			productService.updatePropDefine(define);
			return SUCCESS;
		} catch (Exception e) {
			this.addFieldError("errorMsg", e.getMessage());
			return INPUT;
		}
	}
	
	/**
	 * 删除模型
	 * @return
	 */
	public String deleteModel(){
		try {
			productService.deleteModel(modelId);
			return SUCCESS;
		} catch (Exception e) {
			this.addFieldError("errorMsg", e.getMessage());
			return INPUT;
		}
	}
	
	/**
	 * 修改模型回显
	 * @return
	 */
	public String findModelEcho(){
		try {
			Model model = productService.findModelEcho(modelId);
			request.setAttribute("model", model);
			return SUCCESS;
		} catch (Exception e) {
			this.addFieldError("errorMsg", e.getMessage());
			return INPUT;
		}
	}
	
	/**
	 * 修改模型
	 * @return
	 */
	public String updateModel(){
		try {
			Model model = productService.findModelEcho(modelId);
			model.setModelName(modelName);
			model.setSpec1Name(spec1Name);
			model.setSpec1Values(spec1Values);
			model.setSpec2Name(spec2Name);
			model.setSpec2Values(spec2Values);
			productService.updateModel(model);
			return SUCCESS;
		} catch (Exception e) {
			this.addFieldError("errorMsg", e.getMessage());
			return INPUT;
		}
	}
	
	/**
	 * 查找模型下的属性定义
	 * @return
	 */
	public String findProp(){
		try {
			List<ProductPropDefine> list = productService.findPropDefineByModelId(modelId);
			request.setAttribute("list", list);
			return SUCCESS;
		} catch (Exception e) {
			this.addFieldError("errorMsg", e.getMessage());
			return INPUT;
		}
	}
	
	/**
	 * 查找所有模型
	 * @return
	 */
	public String findAllModel(){
		try {
			List<Model> list = productService.findAllModel();
			request.setAttribute("list", list);
			return SUCCESS;
		} catch (Exception e) {
			this.addFieldError("errorMsg", e.getMessage());
			return INPUT;
		}
	}
	
	/**
	 * 添加模型
	 * @return
	 */
	public String addModel(){
		try {
			Model model = new Model();
			model.setModelName(modelName);
			model.setSpec1Name(spec1Name);
			model.setSpec1Values(spec1Values);
			model.setSpec2Name(spec2Name);
			model.setSpec2Values(spec2Values);
			productService.addModel(model);
			return SUCCESS;
		} catch (Exception e) {
			this.addFieldError("errorMsg", e.getMessage());
			return INPUT;
		}
	}
	
	public ProductService getProductService() {
		return productService;
	}
	public void setProductService(ProductService productService) {
		this.productService = productService;
	}

	public String getModelName() {
		return modelName;
	}

	public void setModelName(String modelName) {
		this.modelName = modelName;
	}

	public String getSpec1Name() {
		return spec1Name;
	}

	public void setSpec1Name(String spec1Name) {
		this.spec1Name = spec1Name;
	}

	public String getSpec1Values() {
		return spec1Values;
	}

	public void setSpec1Values(String spec1Values) {
		this.spec1Values = spec1Values;
	}

	public String getSpec2Name() {
		return spec2Name;
	}

	public void setSpec2Name(String spec2Name) {
		this.spec2Name = spec2Name;
	}

	public String getSpec2Values() {
		return spec2Values;
	}

	public void setSpec2Values(String spec2Values) {
		this.spec2Values = spec2Values;
	}

	public HttpServletRequest getRequest() {
		return request;
	}

	public void setRequest(HttpServletRequest request) {
		this.request = request;
	}

	public String getPropName() {
		return propName;
	}

	public void setPropName(String propName) {
		this.propName = propName;
	}

	public String getPropType() {
		return propType;
	}

	public void setPropType(String propType) {
		this.propType = propType;
	}

	public Integer getModelId() {
		return modelId;
	}

	public void setModelId(Integer modelId) {
		this.modelId = modelId;
	}

	public Integer getPropId() {
		return propId;
	}

	public void setPropId(Integer propId) {
		this.propId = propId;
	}

	public String getDefaultValue() {
		return defaultValue;
	}

	public void setDefaultValue(String defaultValue) {
		this.defaultValue = defaultValue;
	}

	public String getPromptMsg() {
		return promptMsg;
	}

	public void setPromptMsg(String promptMsg) {
		this.promptMsg = promptMsg;
	}

	public Integer getWidth() {
		return width;
	}

	public void setWidth(Integer width) {
		this.width = width;
	}

	public Integer getMaxLength() {
		return maxLength;
	}

	public void setMaxLength(Integer maxLength) {
		this.maxLength = maxLength;
	}

	public String getValidateCode() {
		return validateCode;
	}

	public void setValidateCode(String validateCode) {
		this.validateCode = validateCode;
	}

	public String getDateType() {
		return dateType;
	}

	public void setDateType(String dateType) {
		this.dateType = dateType;
	}

	public String getOptions() {
		return options;
	}

	public void setOptions(String options) {
		this.options = options;
	}

	public Integer getHeight() {
		return height;
	}

	public void setHeight(Integer height) {
		this.height = height;
	}

	public Integer getFieldRequired() {
		return fieldRequired;
	}

	public void setFieldRequired(Integer fieldRequired) {
		this.fieldRequired = fieldRequired;
	}

	public String getPropCode() {
		return propCode;
	}

	public void setPropCode(String propCode) {
		this.propCode = propCode;
	}
}
