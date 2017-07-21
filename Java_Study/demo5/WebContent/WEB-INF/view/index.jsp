<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>AMMT</title>
	<link rel="stylesheet" href="./css/webcss.css" />
	<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" /> 
	<script type="text/javascript" src="./js/jquery-1.11.3.min.js"></script>
	<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>  
	<script type="text/javascript" src="./js/web.js" ></script> 
		

</head>
<body>
	<header>
		<div class="wrap">
			<h1><a href="#" title="���������� �ٷΰ���" class="logo"><span class="hidden">AMMT ����� ������ ����͸� �ý���</span></a></h1>

			<!-- �α����� -->
			<!--  <div class="top_util">
				<div class="link">
					<a href="#">Ȩ</a><a href="#">����Ʈ��</a>
				</div>
				<div class="sign_up">
					<form action="" method="post">
						<fieldset>
							<legend class="hidden">�α��� �ϱ�</legend>
							<label for="userid" class="hidden">���̵�</label>
							<input id="userid" type="text" title="���̵�" placeholder="���̵�">
							<label for="userpw" class="hidden">��й�ȣ</label>
							<input id="userpw" type="password" title="��й�ȣ" placeholder="��й�ȣ">
							<input type="submit" class="topBtn btn_login" value="�α���" title="�α���">
						</fieldset>
					</form>
				</div>
			</div> -->
					
			<!-- �α��� �� -->
			<div class="top_util">
				<div class="link">
					<span class="welcome"><strong>������</strong>�� ������ ȯ���մϴ�.</span><a href="#">Ȩ</a><a href="#">����Ʈ��</a><a href="#">��й�ȣ �����ϱ�</a>
				</div><!-- //link -->
				<div class="sign_up">
					<form action="" method="post">
						<fieldset>
							<legend class="hidden">�α��� �ϱ�</legend>
							<!-- <input type="button" class="topBtn myPage" title="" value="MY PAGE" name=""/> -->
							<a href="#" class="topBtn logout"><span>�α׾ƿ�</span></a>
						</fieldset>
					</form>
				</div> <!-- //sign_up -->
			</div><!-- //top_utill-->

			<nav class="gnb">
				<ul>
					<li><a href="#">AMMT �Ұ�</a></li>
					<li><a href="#">�Խ��ǰ���</a></li>
					<li><a href="#">�۰���</a></li>
					<li><a href="#">ȯ�����</a></li>
					<li><a href="#">���</a></li>
				</ul>
			</nav>

		</div><!-- //wrap -->

			<div class="sub_layer">
				<div class="sub_nav">
					<div>
						<ul class="firstUl">
							<li><a href="#">�̿�ȳ�</a></li>
							<li><a href="#">��������</a></li>
						</ul>

						<ul>
							<li><a href="#">��������</a></li>
							<li><a href="#">�ڷ��</a></li>
						</ul>

						<ul>
							<li><a href="#">�۰���</a></li>
							<li><a href="#">��������ȸ</a></li>
							<li><a href="#">�����̷°���</a></li>
						</ul>

						<ul>
							<li><a href="#">����ڰ���</a></li>
							<li><a href="#">������ �޴�����</a></li>
							<li><a href="#">�ڵ����</a></li>
							<li><a href="#">������������</a></li>
							<li><a href="#">�����ð� �� �����������</a></li>
						</ul>

						<ul>
							<li><a href="#">����͸����</a></li>
							<li><a href="#">�����׸����</a></li>
							<li><a href="#">����ں� ����͸����</a></li>
						</ul>
					</div>
				</div> <!-- //sub_nav -->
			</div><!--  //sub_layer-->
		
	</header>
	<section>
		<div class="wrap bordWrap">
				
			<div class="topMenuWrap">
				<div class="topMenu">
					<p>�۰���</p>
					<select name="" title="">
						<option value="" selected="selected">�۰���</option>
						<option value="">��������ȸ</option>
						<option value="">�����̷°���</option>
					</select>
				</div><!-- //topMenu -->
			</div><!-- //topMenuWrap -->

			<div class="bord appWrap">
				<h2>������ ���/����</h2>

				<div class="app appInfo">
					<p class="title">������</p>
					<table cellpadding="0" cellspacing="0" class="" summary="" >
						<caption class="hidden">������</caption>
						<colgroup>
							<col width="10%"/>
							<col>
							<col width="10%"/>
							<col>
							<col width="10%"/>
							<col>
							<col width="20%"/> 
						</colgroup>
						<tbody>
							<tr>
								<th>�۹�ȣ</th>
								<td><input type="text" class="" title="" value="" name=""/></td>
								<th>����</th>
								<td>
									<select name="" title="">
										<option value="" selected="selected">�÷��̽����</option>
										<option value="">�۽����</option>
										<option value="">�������</option>
									</select>
								</td>
								<th>ī�װ�</th>
								<td>
									<select name="" title="">
										<option value="" selected="selected">����</option>
										<option value="">---</option>
										<option value="">---</option>
									</select>
								</td>
								<td colspan="2"><input type="file" class="" title="" value="����ã��" name=""/></td>
							</tr>
							<tr>
								<th>�� ID</th>
								<td><input type="text" class="" title="" value="" name=""/></td>
								<th>�� ��</th>
								<td colspan="3"><input type="text" class="appName" title="" value="" name=""/></td>
								<td rowspan="4"><img src=""  alt=""/></td>		
							</tr>
							<tr>
								<th>���� URL</th>
								<td colspan="5"><input type="text" class="appUrl" title="" value="" name=""/></td>		
							</tr>
							<tr>
								<th>�� ����</th>
								<td><input type="text" class="" title="" value="" name=""/></td>
								<th>�� �뷮</th>
								<td><input type="text" class="" title="" value="" name=""/></td>
								<th>��������</th>
								<td><input type="text" class="datetype" title="" value="" name=""/></td>
							</tr>
							<tr>
								<th>�̿���</th>
								<td>
									<select name="" title="">
										<option value="" selected="selected">��ü��</option>
										<option value="">---</option>
										<option value="">---</option>
									</select>
								</td>
								<th>�������</th>
								<td>
									<select name="" title="">
										<option value="" selected="selected">����</option>
										<option value="">---</option>
										<option value="">---</option>
									</select>
								</td>
							</tr>
						</tbody>
					</table>
				</div>

				<div class="app devInfo">
					<p class="title">���߻�����</p>
					<table cellpadding="0" cellspacing="0" class="" summary="" >
						<caption></caption>
						<colgroup>
							<col width="10%"/>
							<col>
							<col width="10%"/>
							<col>
							<col width="10%"/>
							<col>
						</colgroup>
						<tbody>
							<tr>
								<th>���߻��ȣ</th>
								<td><input type="text" class="" title="" value="" name=""/></td>
								<th>���߻� ��</th>
								<td>
									<input type="text" class="devName" title="" value="" name=""/>
									<a href="#"><img src="../img/dev.png"  alt="���߻������ ã��" class="devSearch"/></a>
								</td>
								<th>��ǥ�� ��</th>
								<td><input type="text" class="" title="" value="" name=""/></td>
							</tr>
							<tr>
								<th>�̸���</th>
								<td><input type="text" class="" title="" value="" name=""/></td>
								<th>�������</th>
								<td><input type="text" class="" title="" value="" name=""/></td>
								<th>Ȩ������</th>
								<td><input type="text" class="" title="" value="" name=""/></td>
							</tr>
							<tr>
								<th>�ּ�</th>
								<td colspan="5"><input type="text" class="add" title="" value="" name=""/></td>
							</tr>
						</tbody>
					</table>
				</div>

				<div class="app moni">
					<p class="title">����͸� ���</p>
					<table cellpadding="0" cellspacing="0" class="" summary="" >
						<caption></caption>
						<colgroup>
							<col width="10%"/>
							<col>
							<col width="10%"/>
							<col>
							<col width="10%"/>
							<col>
						</colgroup>
						<tbody>
							<tr>
								<th>����</th>
								<td>
									<select name="" title="">
										<option value="" selected="selected">����</option>
										<option value="">---</option>
									</select>
								</td>
								<th>�����</th>
								<td><input type="text" class="" title="" value="" name=""/></td>
								<th>�������Ͻ�</th>
								<td><input type="text" class="" title="" value="" name=""/></td>
							</tr>
							<tr>
								<th>��������</th>
								<td colspan="5">
									<input type="checkbox" id="violation1" class="" title="�������� 1��" value="" name=""/>
									<label for="violation1">�������� 1��</label>
									<input type="checkbox" id="violation2" class="" title="�������� 2��" value="" name=""/>
									<label for="violation2">�������� 2��</label>
									<input type="checkbox" id="violation3" class="" title="�������� 3��" value="" name=""/>
									<label for="violation3">�������� 3��</label>
									<input type="checkbox" id="violation4" class="" title="�������� 4��" value="" name=""/>
									<label for="violation4">�������� 4��</label>
									<input type="checkbox" id="violation5" class="" title="�������� 5��" value="" name=""/>
									<label for="violation5">�������� 5��</label>
									<input type="checkbox" id="violation6" class="" title="�������� 6��" value="" name=""/>
									<label for="violation6">�������� 6��</label>
								</td>
							</tr>
							<tr>
								<th class="top">��ũ����</th>
								<td colspan="5">
									<ul class="screen">
										<li>
											<p class="imgs"><a href="#"><img src="./img/temp.jpg"  alt="" width="128" height="86"/></a></p>
											<span class="txt">item1</span>
										</li>
										<li>
											<p class="imgs"><a href="#"><img src=""  alt="" width="128" height="86" id="imgs2"/></a></p>
											<span class="txt">item1</span>
										</li>
										<li>
											<p class="imgs">12</p>
											<span class="txt">item1</span>
										</li>
										<li>
											<p class="imgs">45</p>
											<span class="txt">item1</span>
										</li>
										<li>
											<p class="imgs">45</p>
											<span class="txt">item1</span>
										</li>
									</ul>
								</td>
							</tr>
							<!-- <tr>
								<th>��ũ���� �߰�</th>
								<td colspan="5"class="screenFile">
									<div class="">
										<input class="uploadName" value="" disabled="disabled">
										<label for="fileFind">����ã��</label> 
										<input type="file" class="fileFind" id="fileFind" title="" value="" name=""/>
									</div>
								<!--	<div class="">
										<input class="uploadName" value="" disabled="disabled">
										<label for="fileFind">����ã��</label> 
										<input type="file" class="fileFind" id="fileFind" title="" value="" name=""/>
									</div>
									<div class="">
										<input class="uploadName" value="" disabled="disabled">
										<label for="fileFind">����ã��</label> 
										<input type="file" class="fileFind" id="fileFind" title="" value="" name=""/>
									</div> 
									<p class="add"><a href="#"><img src="../img/add.gif"  alt="�߰�"/></a></p>
								</td>
							</tr> -->
						</tbody>
					</table>
					<div class="screenFile">
							<dl class="">
								<dt>��ũ���� �߰�</dt>
								<dd>
									<input class="uploadName" value="" disabled="disabled">
									<label for="fileFind">����ã��</label> 
									<input type="file" class="fileFind" id="fileFind" title="" value="" name=""/>
									<input type="button" value="Choose Photo From Android Gallery" onClick="choosePhoto()" />
									<input type="button" value="Upload File" onClick="upload()" />
									<p class="add"><a href="#"><img src="../img/add.gif"  alt="�߰�"/></a></p>
								</dd>
							</dl>
						
					</div>
				</div>
				<div>
					 <br />
  						  File Uri: <label id="lbluri">no file uri</label>
    						  <br />
  						  File Path: <label id="lblpath">no file path</label>
						  <br/>
					          Save Path : <label id="svpath">no file path</label>
   				          <br />
					
			
			
				</div>

				

			</div><!-- //bord -->

		</div><!-- //wrap -->
	</section>

	<footer>
		<div class="wrap">
			<a href="#"><span class="hidden">���������� �ٷΰ���</span></a>
			<div class="addr">
				<p>����� ������ �б����� 36�� 18 �ű����� 4��</p>
				<address>
					<em>/ �ȳ���ȭ : 070-8765-8451</em> 
					<em>/ �ѽ� : 02-539-8767</em> 
				</address>
				<ul class="">
					<li>����ڹ�ȣ 120-82-09427 (��)�ѱ��������ͳݻ������ȸ&nbsp;</li>
					<li>/ ȸ�� ����</li>
				</ul>
			</div> <!-- //addr -->
			<div class="copy">Copyright 2013 MOIBA ALL RIGHTS RESERVED.</div>
		</div> <!-- //wrap -->
	</footer>

  <script language="javascript" type="text/javascript">
	//<![CDATA[
	$(document).ready(function(){
		var fileTarget = $(".fileFind");
		fileTarget.on("change",function(){
			if(window.FileReader){
				var filename = $(this)[0].files[0].name;
			}
			else{
				var filename = $(this).var().splite("/").pop().split("\\").pop();
			}
			$(this).siblings(".uploadName").val(filename);
		});
	});
	//]]>
	function showAndroidToast(toast) {
            Android.showToast(toast);
        }
        function setFilePath(file) {
            document.getElementById('lblpath').innerHTML = file;
            Android.showToast(file);
        }
        function setFileUri(uri) {
            document.getElementById('lbluri').innerHTML = uri;
            Android.showToast(uri);
        }
	function setRealPath(uri){
		
	    document.getElementById('svpath').innerHTML = uri;
	    Android.showToast(uri);
	}
        function choosePhoto() {
            var file = Android.choosePhoto();
            
        }
	 function setImage(src) {
           document.getElementById('imgs2').src = src;
	   
           
        }
	  function upload() {
          Android.uploadtoServer();
	   
           
        }
      
	</script>


</body>
</html>