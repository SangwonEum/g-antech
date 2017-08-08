package kr.or.moiba.ammt.app.service;

import org.apache.ibatis.type.Alias;

import java.util.List;

@Alias("AppDetailCommand")
public class AppDetailCommand {

    /**
     * 수집정보 앱정보
     */
    private AmtAppCollInfoVO amtAppCollInfoVO;

    /**
     * 모니터링결과>조치결과, 기타
     */
    private AmtAppMonitResltVO amtAppMonitResltVO;

    /**
     * 모니터링결과>스크린샷
     */
    private List<AmtAppScrShotVO> amtAppScrShotVOList;

    /**
     * 모니터링결과>위반조항
     */
    private String[] violClausCds;

    /**
     * 앱조치요청내용
     */
    private AmtAppMailSendHisVO amtAppMailSendHisVO;

    public AmtAppCollInfoVO getAmtAppCollInfoVO() {
        return amtAppCollInfoVO;
    }

    public void setAmtAppCollInfoVO(AmtAppCollInfoVO amtAppCollInfoVO) {
        this.amtAppCollInfoVO = amtAppCollInfoVO;
    }

    public AmtAppMonitResltVO getAmtAppMonitResltVO() {
        return amtAppMonitResltVO;
    }

    public void setAmtAppMonitResltVO(AmtAppMonitResltVO amtAppMonitResltVO) {
        this.amtAppMonitResltVO = amtAppMonitResltVO;
    }

    public List<AmtAppScrShotVO> getAmtAppScrShotVOList() {
        return amtAppScrShotVOList;
    }

    public void setAmtAppScrShotVOList(List<AmtAppScrShotVO> amtAppScrShotVOList) {
        this.amtAppScrShotVOList = amtAppScrShotVOList;
    }

    public String[] getViolClausCds() {
        return violClausCds;
    }

    public void setViolClausCds(String[] violClausCds) {
        this.violClausCds = violClausCds;
    }

    public AmtAppMailSendHisVO getAmtAppMailSendHisVO() {
        return amtAppMailSendHisVO;
    }

    public void setAmtAppMailSendHisVO(AmtAppMailSendHisVO amtAppMailSendHisVO) {
        this.amtAppMailSendHisVO = amtAppMailSendHisVO;
    }
}
