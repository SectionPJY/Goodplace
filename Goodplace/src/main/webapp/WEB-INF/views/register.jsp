<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">


<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=3.0">
<title>marketkurly</title>
<link rel="stylesheet" href="resources/css/register.css">
<style type="text/css"></style>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src="script.js"></script>
<script type="text/javascript"></script>
</head>



<body>
	<header style="text-align: center">
		<h2>ȸ������</h2>
	</header>
	<div class="info_member">

		<div>
			<p>���̵�</p>
			<div>
				<input type="text" name="" value="" placeholder="��: marketkurly12"
					required>
				<button type="submit" name="button">�ߺ�Ȯ��</button>
			</div>
		</div>

		<div>
			<p>��й�ȣ</p>
			<input type="text" name="" value="" placeholder="��й�ȣ�� �Է����ּ���"
				required>
		</div>

		<div>
			<p>��й�ȣ Ȯ��</p>
			<input type="text" name="" value="" placeholder="��й�ȣ�� �ѹ� �� �Է����ּ���"
				required>
		</div>

		<div>
			<p>�̸�</p>
			<input type="text" name="" value="" placeholder="�̸��� �Է����ּ���" required>
		</div>

		<div>
			<p>�̸���</p>
			<input type="text" name="" value=""
				placeholder="��: marketkurly@kurly.com" required>
		</div>

		<div>
			<p>�޴���</p>
			<div>
				<input type="text" name="" value="" placeholder="���ڸ� �Է����ּ���"
					required>
				<button type="submit" name="button" disabled>������ȣ �ޱ�</button>
			</div>
		</div>

		<div>
			<p>�ּ�</p>
			<input type="text" name="" value="" placeholder="���θ�, ����, �ǹ��� �˻�"
				required> <span>������� ���� ��ǰ ������ �޶��� �� �ֽ��ϴ�. </span>
		</div>

		<div>
			<p>�������</p>
			<div>
				<input type="text" size="4" maxlength="4" placeholder="YYYY">
				<span>/</span> <input type="text" size="2" maxlength="2"
					placeholder="MM"> <span>/</span> <input type="text"
					size="2" maxlength="2" placeholder="DD">
			</div>
		</div>

		<div>
			<p>����</p>
			<label for="smallradio"> <input type="radio"
				class="smallradio" name="sex"> ����
			</label> <label for="smallradio"> <input type="radio"
				class="smallradio" name="sex"> ����
			</label>
		</div>
	</div>


	<div class="consent">

		<span>�̿��� ����</span>

		<div>
			<input type="radio" class="smallradio" checked> <label
				for="smallradio">��ü �����մϴ�.</label>
			<p>���� �׸� �������� ���� ��쵵 ȸ������ �� �Ϲ����� ���񽺸� �̿��� �� �ֽ��ϴ�.</p>
		</div>


		<div>
			<input type="radio" class="smallradio"> <label
				for="smallradio">�̿��� ���� <span>(�ʼ�)</span></label>
		</div>

		<div>
			<input type="radio" class="smallradio"> <label
				for="smallradio">�������� �������̿� ���� <span>(�ʼ�)</span></label>
		</div>

		<div>
			<input type="radio" class="smallradio"> <label
				for="smallradio">�������� �������̿� ���� <span>(����)</span></label>
		</div>

		<div>
			<input type="radio" class="smallradio"> <label
				for="smallradio">������, �������� �� ����/���� ���� ����<span>(����)</span></label>
		</div>

		<div>
			<label for="smallradio"> <input type="radio"
				class="smallradio" name="contact"> SMS
			</label> <label for="smallradio"> <input type="radio"
				class="smallradio" name="contact"> �̸���
			</label>
		</div>

		<img
			src="https://res.kurly.com/mobile/service/join/2007/bnr_join_benefit_v3.svg?v=1"
			alt="">

		<div>
			<input type="radio" class="smallradio"> <label
				for="smallradio">������ �� 18�� �̻��Դϴ�.<span>(�ʼ�)</span></label>
		</div>

		<button type="button" name="button">�����ϱ�</button>

	</div>



</body>