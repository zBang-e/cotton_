package org.zerock.class01.controller;

import java.util.ArrayList;
import java.util.List;

import org.bson.Document;  //binary jason --> bson
import org.bson.conversions.Bson;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mongodb.client.MongoClient;
import com.mongodb.client.MongoClients;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import com.mongodb.client.model.Projections;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/class")
public class Class01Controller {
	
	@GetMapping("/list.do")
	public String list(Model model) {
		
		// 데이터가 저장될 공간(리스트)
		List<Document> resultList = new ArrayList<Document>();
		
		// DB 접속 주소
		try (MongoClient mongoClient = MongoClients.create("mongodb://localhost:27017/")){
			
			// MongoDB 연결
			MongoDatabase database = mongoClient.getDatabase("mydb1");
			
			//MongoDB Collection 설정
			MongoCollection<Document> collection = database.getCollection("class01");
			
			// 데이처 가져오는 필드 설정
			Bson projection = Projections.fields(
					Projections.include("category", "lecture", "teacher", "StartDate", "organ","place","Cost","Status"),
					Projections.exclude("_id"));
			
			// DB 자료 resultList에 저장
			collection.find().projection(projection).into(resultList);
			log.info(resultList);
			
			model.addAttribute("resultList",resultList);
		}
		
		return "class/list";
	}

	

}
