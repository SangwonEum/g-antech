/*
 * Copyright 2014 MOPAS(Ministry of Public Administration and Security).
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package kr.or.moiba.ammt.common.service;

import egovframework.rte.fdl.security.userdetails.EgovUserDetails;
import egovframework.rte.fdl.security.userdetails.jdbc.EgovUsersByUsernameMapping;
import kr.or.moiba.ammt.management.service.AmtUserInfoVO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.sql.DataSource;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * 사용자 정보를 매핑하는 클래스를 정의한다.
 * @author 실행환경 개발팀 신혜연
 * @since 2011.07.11
 * @version 1.0
 * @see 
 * <pre>
 *  == 개정이력(Modification Information) ==
 *   
 *   수정일      수정자           수정내용
 *  -------    --------    ---------------------------
 *   2011.07.11  신혜연          최초 생성
 * 
 * </pre>
 */
public class EgovSessionMapping extends EgovUsersByUsernameMapping {
	private static final Logger LOGGER = LoggerFactory.getLogger(EgovSessionMapping.class);
	/**
	 * 사용자정보를 테이블에서 조회하여 EgovUsersByUsernameMapping 에 매핑한다.
	 * @param ds DataSource
	 * @param usersByUsernameQuery String
	 */
	public EgovSessionMapping(DataSource ds, String usersByUsernameQuery) {
        super(ds, usersByUsernameQuery);
    }

	/**
	 * mapRow Override
	 * @param rs ResultSet 결과
	 * @param rownum row num
	 * @return Object EgovUserDetails
	 * @exception SQLException
	 */
	@Override
    protected EgovUserDetails mapRow(ResultSet rs, int rownum) throws SQLException {
        boolean strEnabled  = rs.getBoolean("ENABLED");

        String strUsrId = rs.getString("USER_ID");
		String strUserNm = rs.getString("USER_NM");
        String strPassword = rs.getString("PASSWORD");
        String strAuthorCode= rs.getString("AUTHOR_CODE");

        // 세션 항목 설정
        AmtUserInfoVO loginVO = new AmtUserInfoVO();
        loginVO.setUserId(strUsrId);
		loginVO.setUserNm(strUserNm);
        loginVO.setUserPw(strPassword);
        loginVO.setPassword(strPassword);
        loginVO.setAuthorCode(strAuthorCode);

		LOGGER.warn("{}", loginVO);

        return  new EgovUserDetails(strUsrId, strPassword, strEnabled, loginVO);
        
    }
}
