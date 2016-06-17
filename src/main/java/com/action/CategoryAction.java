package com.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.xabaohui.modules.product.bean.Category;
import com.xabaohui.modules.product.bean.ProductPropDefine;
import com.xabaohui.modules.product.dto.PropDTO;
import com.xabaohui.modules.product.service.ProductService;

public class CategoryAction extends ActionSupport{
	private static final long serialVersionUID = 1L;
	private ProductService productService;
	private Integer parentId;
	private String categoryName;
	private Integer categoryId;
	private HttpServletRequest request = ServletActionContext.getRequest();
	private String propName;
	private String propValues;
	private String propType;
	private Integer propId;
	
	/**
	 * 删除分类
	 * @return
	 */
	public String deleteCategory(){
		try {
			productService.deleteCategory(categoryId);
			return SUCCESS;
		} catch (Exception e) {
			this.addFieldError("errorMsg", e.getMessage());
			return INPUT;
		}
	}
	
	/**
	 * 修改分类
	 * @return
	 */
	public String updateCategory(){
		try {
			productService.updateCategoryInfo(categoryId, categoryName);
			return SUCCESS;
		} catch (Exception e) {
			this.addFieldError("errorMsg", e.getMessage());
			return INPUT;
		}
	}
	
	/**
	 * 添加分类
	 * @return
	 */
	public String addCategory(){
		try {
			Category category = productService.addToCategory(parentId, categoryName);
			request.setAttribute("categoryId", category.getCategoryId());
			request.setAttribute("parentId", category.getParentId());
			return SUCCESS;
		} catch (Exception e) {
			this.addFieldError("errorMsg", e.getMessage());
			return INPUT;
		}
	}
	
	/**
	 * 根据父id查询分类
	 * @return
	 */
	public String findCategoryByParentId(){
		List<Category> list = productService.findCategory(parentId);
		request.setAttribute("list", list);
		return SUCCESS;
	}
	
	/**
	 * 查询所有分类
	 * @return
	 */
	public String findAllCategory(){
		List<Category> list = productService.findAllCategory();
		request.setAttribute("list", list);
		return SUCCESS;
	}
	
	public ProductService getProductService() {
		return productService;
	}
	public void setProductService(ProductService productService) {
		this.productService = productService;
	}

	public Integer getParentId() {
		return parentId;
	}

	public void setParentId(Integer parentId) {
		this.parentId = parentId;
	}

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	public Integer getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(Integer categoryId) {
		this.categoryId = categoryId;
	}

	public String getPropName() {
		return propName;
	}

	public void setPropName(String propName) {
		this.propName = propName;
	}

	public String getPropValues() {
		return propValues;
	}

	public void setPropValues(String propValues) {
		this.propValues = propValues;
	}

	public String getPropType() {
		return propType;
	}

	public void setPropType(String propType) {
		this.propType = propType;
	}

	public Integer getPropId() {
		return propId;
	}

	public void setPropId(Integer propId) {
		this.propId = propId;
	}
	
}
