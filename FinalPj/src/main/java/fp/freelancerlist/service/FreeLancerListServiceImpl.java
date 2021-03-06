package fp.freelancerlist.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fp.corporation.domain.Corporation;
import fp.freelancerlist.domain.List_FreeLancer;
import fp.freelancerlist.domain.List_FreeLancerProfile;

import fp.freelancerlist.domain.List_PagingVO;
import fp.freelancerlist.domain.List_Type;
import fp.freelancerlist.mapper.FreeLancerlistMapper;
import fp.freelancerprofile.domain.FreeLancer;
import fp.freelancerprofile.domain.FreeLancerProfile;
import fp.freelancerprofile.domain.Freelancer_FreeLancerProfile;
import fp.freelancerprofile.domain.List_FreeLancerReview;
import fp.freelancerprofile.domain.Project;
import fp.freelancerprofile.domain.Type;


   @Service
   public class FreeLancerListServiceImpl implements FreeLancerListService {
   
   @Autowired
   private FreeLancerlistMapper mapper;
   //리스트 및 페이징//
   @Override
   public int countFreeLancer(){
      return mapper.countFreeLancer();
   }
   @Override
   public int countFreeLancerPaging(Map<String, Object> map){
      return mapper.countFreeLancerPaging(map);
   }
   @Override
   public FreeLancerProfile profile_select(String mem_email) {
      return mapper.profile_select(mem_email);
   }
   @Override
   public List<List_FreeLancer> SelectList(Map<String, Object> map) {
      return mapper.SelectList(map);
   }

   @Override
   public List<List_FreeLancerProfile> SelectList2(){
      return mapper.SelectList2();
   }
   @Override
   public List<List_FreeLancerReview> selectStar_list(){
      return mapper.selectStar_list();
   }
   @Override
   public List<Project> SelectList3(){
      return mapper.SelectList3();
   }
   @Override
   public long count_type(int i) {
      return mapper.count_type(i);
   }
   //인덱스//
   @Override
   public List<List_FreeLancer> index_select(){
      return mapper.index_select();
   }
   @Override
   public List<Freelancer_FreeLancerProfile> keyname_select() {
      return mapper.keyname_select();
   }

   
   //컨텐츠//
   @Override
   public List<Freelancer_FreeLancerProfile> freelancercontent(Map<String, Object> map){
      return mapper.freelancercontent(map);
   }
   @Override
   public List<Freelancer_FreeLancerProfile> selectTel(Map<String, Object> map) {
      return mapper.selectTel(map);
   }
   @Override
   public List<Freelancer_FreeLancerProfile> freelancercontent2(long free_code){
      return mapper.freelancercontent2(free_code);
   }
   @Override
   public List<Freelancer_FreeLancerProfile> freelancercontent3(long free_code){
      return mapper.freelancercontent3(free_code);
   }
   @Override
   public List<Type> freelancercontent4(long free_code){
      return mapper.freelancercontent4(free_code);
   }
   @Override
   public List<Project> freelancercontent5(long free_code){
      return mapper.freelancercontent5(free_code);
   }

   //프로필 조회수 및 별점//
   @Override
   public void vcnt(long pro_num) {
      mapper.vcnt(pro_num);
   }
   @Override
   public List<List_FreeLancerReview> selectStar(long free_code) {
      return mapper.selectStar(free_code);
   }

   //리뷰//   
   @Override
   public long countReview(Map<String, Object> map) {
      return mapper.countReview(map);
   }

   @Override
   public List<FreeLancer> selectFile(String mem_email){
      return mapper.selectFile(mem_email);
   }
   @Override
   public List<Corporation> selectFile_cor(String mem_email){
      return mapper.selectFile_cor(mem_email);
   }

   @Override
   public List<List_FreeLancerReview> freelancerReview(List_FreeLancerReview freelancerreview) {
      return mapper.freelancerReview(freelancerreview);
   }
   @Override
   public void reviewInsert(Map<String, Object> map) {
      mapper.reviewInsert(map);
   }
   
   public void  reviewUpdate(Map<String, Object> map) {
      mapper.reviewUpdate(map);
   }
   @Override
   public void reviewDelete(long freerev_num) {
      mapper.reviewDelete(freerev_num);
   }
   @Override
   public FreeLancer free_list_select(String mem_email) {
      return null;
   }

   @Override
   public long getTotalCountFree(long free_code) {
      return getTotalCountFree(free_code);
   }


}
