package com.useful.web.service;

import java.util.List;

import org.json.JSONArray;

import com.useful.web.domain.dto.ChatDTO;
import com.useful.web.domain.vo.MsgResultVO;

public interface MsgService {

	List<MsgResultVO> selectAllMsgResult();
	
	//�ֱ� x�� �޽��� ��ȯ
	JSONArray selectRecentChat(int limit);
	
	//chat ����
	int insertChat(ChatDTO dto);
}
