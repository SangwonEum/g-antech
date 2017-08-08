package kr.or.moiba.ammt.management.service;

import kr.or.moiba.ammt.common.service.SearchPageNavigationVO;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.ibatis.type.Alias;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;
import java.io.Serializable;

// 사용자정보
@Alias("AmtUserInfoVO")
public class AmtUserInfoVO extends SearchPageNavigationVO implements Serializable {

    private static final long serialVersionUID = 1L;

    //  사용자일련번호
    private Long userSn;

    //  사용자아이디
    @NotNull
    @Pattern(regexp = ".+@.+\\.[a-z]+", message = "사용자ID(메일주소) 형식이 잘못되었습니다.")
    @Size(min = 1, max = 50, message = "사용자ID(메일주소)를 입력하세요")
    private String userId;

    //  사용자명
    @NotNull
    @Size(min = 2, max = 100, message = "사용자명을 입력하세요.")
    private String userNm;

    //  사용자패스워드
    private String userPw;

    //  권한일련번호
    private Long authSn;

    //  사용자연락처
    @NotNull
    @Pattern(regexp = "[0-9]+", message = "연락처(특수기회 제외 숫자만) 형식이 잘못되었습니다.")
    @Size(min = 10, max = 20, message = "연락처를 입력하세요.")
    private String userPhone;

    /**
     * 전자정부에서 사용하는 필드 이름 비밀번호
     */
    private String password;

    /**
     * 전자정부에서 사용하는 필드 이름 비밀번호 확인
     */
    private String userPwCheck;

    /**
     * 전자정부에서 사용하는 필드 이름 권한
     */
    private String authorCode;

    public Long getUserSn() {
        return userSn;
    }

    public void setUserSn(Long userSn) {
        this.userSn = userSn;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getUserNm() {
        return userNm;
    }

    public void setUserNm(String userNm) {
        this.userNm = userNm;
    }

    public String getUserPw() {
        return userPw;
    }

    public void setUserPw(String userPw) {
        this.userPw = userPw;
    }

    public Long getAuthSn() {
        return authSn;
    }

    public void setAuthSn(Long authSn) {
        this.authSn = authSn;
    }

    public String getUserPhone() {
        return userPhone;
    }

    public void setUserPhone(String userPhone) {
        this.userPhone = userPhone;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getUserPwCheck() {
        return userPwCheck;
    }

    public void setUserPwCheck(String userPwCheck) {
        this.userPwCheck = userPwCheck;
    }

    public String getAuthorCode() {
        return authorCode;
    }

    public void setAuthorCode(String authorCode) {
        this.authorCode = authorCode;
    }

    @Override
    public String toString() {
        return ToStringBuilder.reflectionToString(this);
    }
}
