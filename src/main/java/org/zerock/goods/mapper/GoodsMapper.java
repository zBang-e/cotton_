package org.zerock.goods.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import org.zerock.category.vo.CategoryVO;
import org.zerock.goods.vo.GoodsImageVO;
import org.zerock.goods.vo.GoodsPriceVO;
import org.zerock.goods.vo.GoodsSearchVO;
import org.zerock.goods.vo.GoodsVO;
import org.zerock.util.page.PageObject;

@Repository
public interface GoodsMapper {
	
	public List<GoodsVO> list(@Param("pageObject") PageObject pageObject,
			                  @Param("goodsSearchVO") GoodsSearchVO goodsSearchVO);
	public List<GoodsVO> selectAllGoods(); 
	public List<String> getImageList(Long goods_no); 
	public List<CategoryVO> getCategory(@Param("cate_code1") Integer cate_code1);
	public List<GoodsImageVO> imageList(@Param("goods_no") Long goods_no);
	public Long getTotalRow(@Param("pageObject") PageObject pageObject,
							@Param("goodsSearchVO") GoodsSearchVO goodsSearchVO);	
	public GoodsVO view(@Param("goods_no") Long goods_no);
	public Integer write(GoodsVO vo);
	public Integer writePrice(GoodsVO vo);
	public Integer writeImage(GoodsImageVO vo);
	public Integer update(GoodsVO vo);
	public Integer updatePrice(GoodsVO vo);
    int deleteGoods(Long goods_no); 
    int deleteImages(Long goods_no); 
	public Integer getCateCode1ByGoodsNo(Long goods_no);
	
	Integer getReviewCountByGoodsNo(Long goods_no);


	
}
  


