package com.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.xabaohui.modules.product.bean.Product;
import com.xabaohui.modules.product.bean.ProductProp;
import com.xabaohui.modules.product.dto.AddToProductDTO;
import com.xabaohui.modules.product.dto.ProductDTO;
import com.xabaohui.modules.product.dto.ProductPropDTO;
import com.xabaohui.modules.product.dto.SkuDTO;
import com.xabaohui.modules.product.service.ProductService;

public class ProductAction extends ActionSupport{
	private static final long serialVersionUID = 1L;
	private ProductService productService;
	private AddToProductDTO addToProductDTO;
	private HttpServletRequest request = ServletActionContext.getRequest();
	private String productPrice;
	private Integer categoryId;
	private Integer productId;
	
	/**
	 * 查看商品详细信息
	 * @return
	 */
	public String findProductDetail(){
		try {
			ProductDTO productDTO = productService.findProductDetail(productId);
			request.setAttribute("productDTO", productDTO);
			return SUCCESS;
		} catch (Exception e) {
			this.addFieldError("errorMsg", e.getMessage());
			return INPUT;
		}
	}
	
	/**
	 * 删除商品
	 * @return
	 */
	public String deleteProduct(){
		try {
			productService.deleteProduct(productId);
			request.setAttribute("categoryId", categoryId);
			return SUCCESS;
		} catch (Exception e) {
			this.addFieldError("errorMsg", e.getMessage());
			return INPUT;
		}
	}
	
	/**
	 * 根据分类id查看商品
	 * @return
	 */
	public String findProduct(){
		try {
			if (categoryId == null){
				categoryId = (Integer) request.getSession().getAttribute("categoryId");
			}
			List<Product> list = productService.findProductList(categoryId);
			request.setAttribute("list", list);
			request.setAttribute("categoryId", categoryId);
			return SUCCESS;
		} catch (Exception e) {
			this.addFieldError("errorMsg", e.getMessage());
			return INPUT;
		}
	}
	
	/**
	 * 添加商品
	 * @return
	 */
	public String addProduct(){
		try {
			addToProductDTO.setCategoryId(categoryId);
			addToProductDTO.setProductPrice(Long.parseLong(productPrice));
			String[] propIds = request.getParameterValues("propId");
			String[] propValues = request.getParameterValues("propValue");
			List<ProductProp> productPropList = new ArrayList<ProductProp>();
			for (int i = 0;i<propIds.length;i++) {
				ProductProp prop = new ProductProp();
				prop.setPropId(Integer.valueOf(propIds[i]));
				prop.setPropValue(propValues[i]);
				productPropList.add(prop);
			}
			List<SkuDTO> skuDTOList = new ArrayList<SkuDTO>();
			String[] skuNos = request.getParameterValues("skuNo");
			String[] spec1s = request.getParameterValues("spec1");
			String[] spec2s = request.getParameterValues("spec2");
			for (int j = 0;j<skuNos.length;j++) {
				SkuDTO sku = new SkuDTO();
				sku.setSkuNo(skuNos[j]);
				sku.setSpec1Value(spec1s[j]);
				sku.setSpec2Value(spec2s[j]);
				skuDTOList.add(sku);
			}
			addToProductDTO.setProductPropList(productPropList);
			addToProductDTO.setSkuDTOList(skuDTOList);
			productService.addProduct(addToProductDTO);
			request.getSession().setAttribute("categoryId", categoryId);
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

	public AddToProductDTO getAddToProductDTO() {
		return addToProductDTO;
	}

	public void setAddToProductDTO(AddToProductDTO addToProductDTO) {
		this.addToProductDTO = addToProductDTO;
	}

	public String getProductPrice() {
		return productPrice;
	}

	public void setProductPrice(String productPrice) {
		this.productPrice = productPrice;
	}

	public Integer getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(Integer categoryId) {
		this.categoryId = categoryId;
	}

	public Integer getProductId() {
		return productId;
	}

	public void setProductId(Integer productId) {
		this.productId = productId;
	}
}
