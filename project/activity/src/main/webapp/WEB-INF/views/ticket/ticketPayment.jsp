<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <title>Payment</title>
    <style>
        /* Style for the ticket form */
        #ticket-Payment {
            max-width: 600px;
            margin: 300px auto;
            background-color: #eee;
        }

        .ticket-box {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 10px;
        }

        .ticket-tag {
            font-size: 16px;
            font-weight: bold;
        }

        .ticket-amount {
            font-size: 14px;
        }

        #sum {
            font-size: 18px;
            font-weight: bold;
            margin-top: 10px;
        }

        button {
            display: block;
            margin: 20px auto;
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        button:hover {
            background-color: #3e8e41;
        }

        #ticketInfo label {
            margin-bottom: 10px; /* adjust the value as needed */
        }

    </style>
</head>
<body>
<%@ include file="../include/header.jsp" %>
<div id="ticket-Payment">
    <form id="form1">
        <!-- hidden처리 -->
        <input type="hidden" name="ticket_type" id="type" value="${map.ticket_type }">
        <input type="hidden" id="member_id" name="member_id" value="${member.member_id }"/>
        <input type="hidden" id="member_name" name="member_name" readonly value="${member.member_name }"/>
        <input type="hidden" id="amount" name="ticket_amount" value="${map.ticket_amount }"/>
        <!-- 화면에 표시 -->
        <div id="ticketInfo">
            <table>
                <tr>
                    <th><label for="name">이름</label>
                    <td><input type="text" id="name" value="${member.member_name }"/>
                </tr>
                <tr>
                    <th><label for="email">이메일</label>
                    <td><input type="text" id="email" name="ticket_email" readonly value="${member.member_email }"/>
                </tr>
                <tr>
                    <th><label for="phone">연락처 </label>
                    <td><input type="text" id="phone" name="ticket_phone" readonly value="${member.member_phone }"/>
                </tr>
                <tr>
                    <th><label for="date">방문날짜 </label>
                    <td><input type="text" id="date" name="ticket_date" readonly value="${map.ticket_date }"/>
                </tr>
            </table>
        </div>
        <hr>
        <div class="ticket-box">
            <div class="ticket-tag">어른</div>
            <div class="ticket-amount">${map.adult_amount}장</div>
        </div>
        <div class="ticket-box">
            <div class="ticket-tag">청소년</div>
            <div class="ticket-amount">${map.teen_amount}장</div>
        </div>
        <div class="ticket-box">
            <div class="ticket-tag">유아</div>
            <div class="ticket-amount">${map.baby_amount} 장</div>
        </div>
        <hr>
        <div>결제 금액 &nbsp;&nbsp;<input type="number" id="sum" name="ticket_sum" value="${map.ticket_sum }" readonly/>
        </div>
        <button type="button" id="buyTicket">결제하기</button>
    </form>
</div>
<%@ include file="../include/footer.jsp" %>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script>
    $('#buyTicket').click(function () {
        //아임포트 카카오페이 결제 시작
        var IMP = window.IMP;
        IMP.init('imp42522200');
        IMP.request_pay({
            pg: "kakaopay",
            pay_method: 'card',
            merchant_uid: 'merchant_' + new Date().getTime(),
            name: '${map.ticket_type }',
            amount: '${map.ticket_sum }',
            buyer_email: '${member.member_email}',
            buyer_name: '${member.member_name}',
            buyer_tel: '${member.member_phone}',
        }, function (rsp) {
            if (rsp.success) {
                var msg = '예매가 완료되었습니다.';
                $.ajax({
                    type: "POST",
                    url: "ticketPayment",
                    data: $('#form1').serialize(),
                    success: function (response) {
                        console.log(response);
                        swal("", msg, "success").then(() => {
                            location.href = "main";
                        });
                    },
                    error: function (xhr, textStatus, errorThrown) {
                        console.log(xhr.responseText);
                    }
                });
            } else {
                var msg = '결제에 실패하였습니다.';
                rsp.error_msg;

            }
        });
    });
</script>
</body>
</html>