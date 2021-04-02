<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="req" value="${pageContext.request}" />
<c:set var="url">${req.requestURL}</c:set>
<c:set var="uri" value="${req.requestURI}" />
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Таблица Табеля (dynamic) | КУСЗН</title>
    <base href="${fn:substring(url, 0, fn:length(url) - fn:length(uri))}${req.contextPath}/">
    <link href="resources/css/main.css" rel="stylesheet">
    <!--<script src="resources/js/main.js"></script>-->

    <style type="text/css">
        .ritz .waffle a     {color: inherit;}
        .ritz .waffle .s23  {border-bottom:0 SOLID #000000;border-right:1px SOLID #000000;background-color:#ffffff;text-align:center;color:#cc4125;font-family:'Arial','sans-serif';font-size:8pt;vertical-align:middle;white-space:normal;overflow:hidden;word-wrap:break-word;direction:ltr;padding:0 3px 0 3px;}
        .ritz .waffle .s4   {background-color:#ffffff;text-align:right;font-weight:bold;color:#000000;font-family:'Arial','sans-serif';font-size:8pt;vertical-align:bottom;white-space:nowrap;direction:ltr;padding:0 3px 0 3px;}
        .ritz .waffle .s0   {background-color:#ffffff;text-align:left;color:#000000;font-family:'Arial','sans-serif';font-size:8pt;vertical-align:bottom;white-space:nowrap;direction:ltr;padding:0 3px 0 3px;}
        .ritz .waffle .s11  {background-color:#ffffff;text-align:left;color:#cc4125;font-family:'Arial','sans-serif';font-size:8pt;vertical-align:bottom;white-space:nowrap;direction:ltr;padding:0 3px 0 3px;}
        .ritz .waffle .s35  {border-right:1px SOLID #000000;background-color:#ffffff;text-align:center;color:#000000;font-family:'Arial','sans-serif';font-size:8pt;vertical-align:bottom;white-space:nowrap;direction:ltr;padding:0 3px 0 3px;}
        .ritz .waffle .s22  {border-bottom:1px SOLID #000000;border-right:1px SOLID #000000;background-color:#ffffff;text-align:left;color:#cc4125;font-family:'Arial','sans-serif';font-size:8pt;vertical-align:middle;white-space:normal;overflow:hidden;word-wrap:break-word;direction:ltr;padding:0 3px 0 3px;}
        .ritz .waffle .s36  {background-color:#ffffff;text-align:center;color:#cc4125;font-family:'Arial','sans-serif';font-size:8pt;vertical-align:bottom;white-space:normal;overflow:hidden;word-wrap:break-word;direction:ltr;padding:0 3px 0 3px;}
        .ritz .waffle .s25  {border-left: none;border-right: none;border-bottom:1px SOLID #000000;background-color:#ffffff;text-align:center;color:#cc4125;font-family:'Arial','sans-serif';font-size:8pt;vertical-align:middle;white-space:nowrap;direction:ltr;padding:0 3px 0 3px;}
        .ritz .waffle .s28  {border-bottom:1px SOLID #000000;background-color:#ffffff;text-align:center;color:#cc4125;font-family:'Arial','sans-serif';font-size:8pt;vertical-align:bottom;white-space:normal;overflow:hidden;word-wrap:break-word;direction:ltr;padding:0 3px 0 3px;}
        .ritz .waffle .s33  {background-color:#ffffff;}
        .ritz .waffle .s14  {border-right:1px SOLID #000000;background-color:#ffffff;text-align:left;color:#000000;font-family:'Arial','sans-serif';font-size:8pt;vertical-align:bottom;white-space:nowrap;direction:ltr;padding:0 3px 0 3px;}
        .ritz .waffle .s30  {border-right:1px SOLID #000000;background-color:#ffffff;text-align:left;font-weight:bold;color:#000000;font-family:'Arial','sans-serif';font-size:8pt;vertical-align:bottom;white-space:nowrap;direction:ltr;padding:0 3px 0 3px;}
        .ritz .waffle .s32  {background-color:#ffffff;text-align:center;color:#000000;font-family:'Arial','sans-serif';font-size:8pt;vertical-align:middle;white-space:nowrap;direction:ltr;padding:0 3px 0 3px;}
        .ritz .waffle .s31  {border-bottom:1px SOLID #000000;background-color:#ffffff;text-align:left;color:#000000;font-family:'docs-Calibri',Arial,'sans-serif';font-size:8pt;vertical-align:bottom;white-space:nowrap;direction:ltr;padding:0 3px 0 3px;}
        .ritz .waffle .s10  {border-bottom:1px SOLID #000000;border-right:1px SOLID #000000;background-color:#ffffff;text-align:center;color:#000000;font-family:'Arial','sans-serif';font-size:8pt;vertical-align:middle;white-space:nowrap;direction:ltr;padding:0 3px 0 3px;}
        .ritz .waffle .s37  {background-color:#ffffff;text-align:center;color:#cc4125;font-family:'Arial','sans-serif';font-size:8pt;vertical-align:bottom;white-space:nowrap;direction:ltr;padding:0 3px 0 3px;}
        .ritz .waffle .s7   {background-color:#ffffff;text-align:center;color:#000000;font-family:'Arial','sans-serif';font-size:8pt;vertical-align:bottom;white-space:nowrap;direction:ltr;padding:0 3px 0 3px;}
        .ritz .waffle .s9   {border-right:1px SOLID #000000;background-color:#ffffff;text-align:right;color:#000000;font-family:'docs-Calibri',Arial,'sans-serif';font-size:8pt;vertical-align:bottom;white-space:nowrap;direction:ltr;padding:0 3px 0 3px;}
        .ritz .waffle .s29  {border-bottom:1px SOLID #000000;background-color:#ffffff;text-align:center;color:#cc4125;font-family:'Arial','sans-serif';font-size:8pt;vertical-align:bottom;white-space:nowrap;direction:ltr;padding:0 3px 0 3px;}
        .ritz .waffle .s18  {border-bottom:1px SOLID #000000;border-right:1px SOLID #000000;background-color:#ffffff;text-align:center;color:#000000;font-family:'Arial','sans-serif';font-size:8pt;vertical-align:top;white-space:normal;overflow:hidden;word-wrap:break-word;direction:ltr;padding:0 3px 0 3px;}
        .ritz .waffle .s27  {background-color:#ffffff;text-align:left;font-weight:bold;color:#000000;font-family:'Arial','sans-serif';font-size:8pt;vertical-align:bottom;white-space:nowrap;direction:ltr;padding:0 3px 0 3px;}
        .ritz .waffle .s21  {border-bottom:1px SOLID #000000;background-color:#ffffff;text-align:center;color:#000000;font-family:'Arial','sans-serif';font-size:8pt;vertical-align:middle;white-space:nowrap;direction:ltr;padding:0 3px 0 3px;}
        .ritz .waffle .s34  {background-color:#ffffff;text-align:center;color:#000000;font-family:'Arial','sans-serif';font-size:8pt;vertical-align:top;white-space:nowrap;direction:ltr;padding:0 3px 0 3px;}
        .ritz .waffle .s24  {border-right: none;border-bottom:1px SOLID #000000;background-color:#ffffff;text-align:center;color:#cc4125;font-family:'Arial','sans-serif';font-size:8pt;vertical-align:middle;white-space:nowrap;direction:ltr;padding:0 3px 0 3px;}
        .ritz .waffle .s12  {border-bottom:1px SOLID #000000;border-right:1px SOLID #000000;background-color:#ffffff;text-align:center;color:#cc4125;font-family:'Arial','sans-serif';font-size:8pt;vertical-align:middle;white-space:nowrap;direction:ltr;padding:0 3px 0 3px;}
        .ritz .waffle .s6   {border-bottom:1px SOLID #000000;border-right:1px SOLID #000000;background-color:#ffffff;text-align:center;font-weight:bold;color:#0000ff;font-family:'Arial','sans-serif';font-size:8pt;vertical-align:middle;white-space:nowrap;direction:ltr;padding:0 3px 0 3px;}
        .ritz .waffle .s19  {border-right:1px SOLID #000000;background-color:#ffffff;text-align:left;color:#000000;font-family:'Arial','sans-serif';font-size:8pt;vertical-align:middle;white-space:nowrap;direction:ltr;padding:0 3px 0 3px;}
        .ritz .waffle .s3   {background-color:#ffffff;text-align:center;font-weight:bold;color:#000000;font-family:'Arial','sans-serif';font-size:8pt;vertical-align:bottom;white-space:nowrap;direction:ltr;padding:0 3px 0 3px;}
        .ritz .waffle .s17  {border-bottom:1px SOLID #000000;border-right:1px SOLID #000000;background-color:#99ccff;text-align:center;color:#000000;font-family:'Arial','sans-serif';font-size:8pt;vertical-align:middle;white-space:nowrap;direction:ltr;padding:0 3px 0 3px;}
        .ritz .waffle .s26  {border-left: none;background-color:#ffffff;text-align:left;color:#000000;font-family:'Arial','sans-serif';font-size:8pt;vertical-align:bottom;white-space:nowrap;direction:ltr;padding:0 3px 0 3px;}
        .ritz .waffle .s16  {border-bottom:1px SOLID #000000;border-right:1px SOLID #000000;background-color:#ffffff;text-align:left;color:#000000;font-family:'Arial','sans-serif';font-size:8pt;vertical-align:bottom;white-space:nowrap;direction:ltr;padding:0 3px 0 3px;}
        .ritz .waffle .s2   {background-color:#ffffff;text-align:right;font-weight:bold;color:#000000;font-family:'Arial','sans-serif';font-size:11pt;vertical-align:bottom;white-space:nowrap;direction:ltr;padding:0 3px 0 3px;}
        .ritz .waffle .s15  {border-bottom:1px SOLID #000000;border-right:1px SOLID #000000;background-color:#ffffff;text-align:center;color:#000000;font-family:'Arial','sans-serif';font-size:8pt;vertical-align:middle;white-space:normal;overflow:hidden;word-wrap:break-word;direction:ltr;padding:0 3px 0 3px;}
        .ritz .waffle .s1   {background-color:#ffffff;text-align:center;font-weight:bold;color:#000000;font-family:'Arial','sans-serif';font-size:11pt;vertical-align:bottom;white-space:nowrap;direction:ltr;padding:0 3px 0 3px;}
        .ritz .waffle .s5   {border-right:1px SOLID #000000;background-color:#ffffff;text-align:right;color:#000000;font-family:'Arial','sans-serif';font-size:8pt;vertical-align:bottom;white-space:nowrap;direction:ltr;padding:0 3px 0 3px;}
        .ritz .waffle .s8   {background-color:#ffffff;text-align:left;color:#cc4125;font-family:'Arial','sans-serif';font-size:8pt;vertical-align:bottom;white-space:normal;overflow:hidden;word-wrap:break-word;direction:ltr;padding:0 3px 0 3px;}
        .ritz .waffle .s13  {border-bottom:1px SOLID #000000;background-color:#ffffff;text-align:left;color:#000000;font-family:'Arial','sans-serif';font-size:8pt;vertical-align:bottom;white-space:nowrap;direction:ltr;padding:0 3px 0 3px;}
        .ritz .waffle .s38  {border-right:1px SOLID #000000;background-color:#ffffff;text-align:center;color:#000000;font-family:'Arial','sans-serif';font-size:8pt;vertical-align:top;white-space:nowrap;direction:ltr;padding:0 3px 0 3px;}
        .ritz .waffle .s20  {background-color:#ffffff;text-align:left;color:#000000;font-family:'Arial','sans-serif';font-size:8pt;vertical-align:middle;white-space:nowrap;direction:ltr;padding:0 3px 0 3px; }
        /*.centered         { background-color:yellowgreen;text-align:center;vertical-align:middle;font-family:'Arial';font-size: 28px; }*/
    </style>
    <!--<link type="text/css" rel="stylesheet" href="timetable.css" >-->
</head>

<body>
<div class="ritz grid-container" dir="ltr">
    <table class="waffle" cellspacing="0" cellpadding="0">

        <thead>
        <tr>
            <th class="row-header freezebar-origin-ltr"></th>
            <!--<th style="width:17px;" class="column-headers-background"></th>-->
            <th style="width:14px;" class="column-headers-background"></th>
            <th style="width:92px;" class="column-headers-background"></th>
            <th style="width:60px;" class="column-headers-background"></th>
            <th style="width:60px;" class="column-headers-background"></th>
            <th style="width:76px;" class="column-headers-background"></th>
            <th style="width:20px;" class="column-headers-background"></th>
            <th style="width:20px;" class="column-headers-background"></th>
            <th style="width:20px;" class="column-headers-background"></th>
            <th style="width:20px;" class="column-headers-background"></th>
            <th style="width:20px;" class="column-headers-background"></th>
            <th style="width:20px;" class="column-headers-background"></th>
            <th style="width:20px;" class="column-headers-background"></th>
            <th style="width:20px;" class="column-headers-background"></th>
            <th style="width:20px;" class="column-headers-background"></th>
            <th style="width:20px;" class="column-headers-background"></th>
            <th style="width:20px;" class="column-headers-background"></th>
            <th style="width:20px;" class="column-headers-background"></th>
            <th style="width:20px;" class="column-headers-background"></th>
            <th style="width:20px;" class="column-headers-background"></th>
            <th style="width:20px;" class="column-headers-background"></th>
            <th style="width:20px;" class="column-headers-background"></th>
            <th style="width:20px;" class="column-headers-background"></th>
            <th style="width:44px;" class="column-headers-background"></th>
            <th style="width:20px;" class="column-headers-background"></th>
            <th style="width:20px;" class="column-headers-background"></th>
            <th style="width:20px;" class="column-headers-background"></th>
            <th style="width:20px;" class="column-headers-background"></th>
            <th style="width:20px;" class="column-headers-background"></th>
            <th style="width:20px;" class="column-headers-background"></th>
            <th style="width:20px;" class="column-headers-background"></th>
            <th style="width:20px;" class="column-headers-background"></th>
            <th style="width:20px;" class="column-headers-background"></th>
            <th style="width:20px;" class="column-headers-background"></th>
            <th style="width:20px;" class="column-headers-background"></th>
            <th style="width:20px;" class="column-headers-background"></th>
            <th style="width:20px;" class="column-headers-background"></th>
            <th style="width:20px;" class="column-headers-background"></th>
            <th style="width:20px;" class="column-headers-background"></th>
            <th style="width:20px;" class="column-headers-background"></th>
            <th style="width:66px;" class="column-headers-background"></th>
            <!--<th style="width:9px;" class="column-headers-background"></th>-->
        </tr>
        </thead>

        <tbody>

        <!--НАЧАЛО ЗАГОЛОВКА ДОКУМЕНТА--------------------------------------------------------------------------------------------->
        <!--Строка 2-->
        <tr style="height: 20px">
            <th style="height: 20px;" class="row-headers-background">
                <div class="row-header-wrapper" style="line-height: 20"></div>
            </th>
            <td class="s1" dir="ltr" colspan="3"></td>
            <td class="s1" dir="ltr" colspan="28">Т а б е л ь  №<span style="color:#cc4125;">&nbsp; #tabNum</span></td>
            <td class="s2" colspan="8"></td>
            <td class="s2" colspan="1"></td>
            <td class="s0"></td>
        </tr>

        <!--Строка 3-->
        <tr style="height: 20px">
            <th style="height: 20px;" class="row-headers-background">
                <div class="row-header-wrapper" style="line-height: 20"></div>
            </th>
            <td class="s3" colspan="3"></td>
            <td class="s3" colspan="28">учета использования рабочего времени</td>
            <td class="s4" colspan="8"></td>
            <td class="s13" colspan="1"></td>
        </tr>

        <!--Строка 4-->
        <tr style="height: 16px">
            <th style="height: 16px;" class="row-headers-background">
                <div class="row-header-wrapper" style="line-height: 16px"></div>
            </th>
            <td class="s0" colspan="3"></td>
            <td class="s0" colspan="28"></td>
            <td class="s5" colspan="8">Форма по ОКУД</td>
            <td class="s6">0504421</td>
        </tr>

        <!--Строка 5-->
        <tr style="height: 16px">
            <th style="height: 16px;" class="row-headers-background">
                <div class="row-header-wrapper" style="line-height: 16px"></div>
            </th>
            <td class="s0" colspan="3"></td>
            <td class="s7" dir="ltr" colspan="28">за период с &nbsp;<span style="color:#cc4125;">#fromDay</span>&nbsp; по &nbsp;<span style="color:#cc4125;">#toDay &nbsp; #ofMonth</span>  <span style="color:#cc4125;">&nbsp; #ofYear</span>&nbsp; г.</td>
            <td class="s5" colspan="8">Дата</td>
            <td class="s6">1/29/2020</td>
        </tr>

        <!--Строка 6: Учреждение-->
        <tr style="height: 16px">
            <th style="height: 16px;" class="row-headers-background">
                <div class="row-header-wrapper" style="line-height: 16px"></div>
            </th>
            <!--<td class="s0"></td>-->
            <td class="s0" colspan="3">Учреждение </td>
            <td class="s8" dir="ltr" colspan="28">#orgName</td>
            <td class="s5" colspan="8">по ОКПО </td>
            <td class="s6">23661112</td>
            <!--<td class="s0"></td>-->
        </tr>

        <!--Строка 7: Структурное подразделение-->
        <tr style="height: 16px">
            <th id="1359627273R6" style="height: 16px;" class="row-headers-background">
                <div class="row-header-wrapper" style="line-height: 16px"></div>
            </th>
            <!--<td class="s0"></td>-->
            <td class="s0" colspan="3">Структурное подразделение</td>
            <td class="s8" dir="ltr" colspan="28">#depName</td>
            <td class="s9" colspan="8"></td>
            <td class="s10"></td>
            <!--<td class="s0"></td>-->
        </tr>

        <!--Строка 8: Вид табеля + Номер корректировки-->
        <tr style="height: 16px">
            <th style="height: 16px;" class="row-headers-background">
                <div class="row-header-wrapper" style="line-height: 16px"></div>
            </th>
            <td class="s0" colspan="3">Вид табеля</td>
            <td class="s11" dir="ltr" colspan="28">#tabType</td>
            <td class="s5" colspan="8">Номер корректировки</td>
            <td class="s10"></td>
        </tr>

        <!--Строка 9: (первичный, корректирующий) + Дата формирования документа-->
        <tr style="height: 16px">
            <th style="height: 16px;" class="row-headers-background">
                <div class="row-header-wrapper" style="line-height: 16px"></div>
            </th>
            <td class="s0" colspan="3"></td>
            <td class="s7" colspan="28">(первичный - 0; корректирующий - 1, 2, и т.д.)</td>
            <td class="s5" colspan="8">Дата формирования документа</td>
            <td class="s12" dir="ltr">#tabDate1</td>
        </tr>
        <!--КОНЕЦ ЗАГОЛОВКА ДОКУМЕНТА---------------------------------------------------------------------------------------------->



        <!--Строка 10: пусто-->
        <tr style="height: 16px">
            <th style="height: 16px;" class="row-headers-background">
                <div class="row-header-wrapper" style="line-height: 16px"></div>
            </th>
            <td class="s13" colspan="40"></td>
        </tr>



        <!--НАЧАЛО ТАБЛИЦЫ ТАБЕЛЯ-------------------------------------------------------------------------------------------------->
        <!--Строка 11: Начало таблицы-->
        <tr style="height: 14px">
            <th style="height: 14px;" class="row-headers-background">
                <div class="row-header-wrapper" style="line-height: 14px"></div>
            </th>
            <td class="s15" colspan="2" rowspan="2" style="border-left: 1px solid #000000;">Фамилия, имя, отчество</td>
            <td class="s10" colspan="2">Учетный номер</td>
            <td class="s15" rowspan="2">Должность (профессия)</td>
            <td class="s10" colspan="35">Числа месяца</td>
        </tr>

        <!--Строка 12-->
        <tr style="height: 74px">
            <th style="height: 74px;" class="row-headers-background">
                <div class="row-header-wrapper" style="line-height: 74px"></div>
            </th>
            <td class="s16"></td>
            <td class="s16"></td>
            <td class="s10">1</td>
            <td class="s10">2</td>
            <td class="s10">3</td>
            <td class="s10">4</td>
            <td class="s10">5</td>
            <td class="s17">6</td>
            <td class="s17">7</td>
            <td class="s10">8</td>
            <td class="s10">9</td>
            <td class="s10">10</td>
            <td class="s10">11</td>
            <td class="s10">12</td>
            <td class="s17">13</td>
            <td class="s17">14</td>
            <td class="s10">15</td>
            <td class="s18" dir="ltr" colspan="3">Итого дней (часов) явок (неявок) <br>с 1 по 15</td>
            <td class="s10">16</td>
            <td class="s10">17</td>
            <td class="s10">18</td>
            <td class="s10">19</td>
            <td class="s10">20</td>
            <td class="s17">21</td>
            <td class="s17">22</td>
            <td class="s17">23</td>
            <td class="s10">24</td>
            <td class="s10">25</td>
            <td class="s10">26</td>
            <td class="s17">27</td>
            <td class="s17">28</td>
            <td class="s10" dir="ltr">29</td>
            <td class="s10" dir="ltr">30</td>
            <td class="s10" dir="ltr">31</td>
            <td class="s18" dir="ltr">Всего дней (часов) явок (неявок)<br>за месяц</td>
        </tr>

        <!--Строка 13: номера колонок таблицы табеля-->
        <tr style="height: 17px">
            <th style="height: 17px;" class="row-headers-background">
                <div class="row-header-wrapper" style="line-height: 17px"></div>
            </th>
            <td class="s10" colspan="2" style="border-left: 1px solid #000000;">1</td>
            <td class="s10">2</td>
            <td class="s10">3</td>
            <td class="s10">4</td>
            <td class="s10">5</td>
            <td class="s10">6</td>
            <td class="s10">7</td>
            <td class="s10">8</td>
            <td class="s10">9</td>
            <td class="s10">10</td>
            <td class="s10">11</td>
            <td class="s10">12</td>
            <td class="s10">13</td>
            <td class="s10">14</td>
            <td class="s10">15</td>
            <td class="s10">16</td>
            <td class="s10">17</td>
            <td class="s10">18</td>
            <td class="s10">19</td>
            <td class="s10" colspan="3">20</td>
            <td class="s10">21</td>
            <td class="s10">22</td>
            <td class="s10">23</td>
            <td class="s10">24</td>
            <td class="s10">25</td>
            <td class="s10">26</td>
            <td class="s10">27</td>
            <td class="s10">28</td>
            <td class="s10">29</td>
            <td class="s10">30</td>
            <td class="s10">31</td>
            <td class="s10">32</td>
            <td class="s10">33</td>
            <td class="s10" dir="ltr">34</td>
            <td class="s10" dir="ltr">35</td>
            <td class="s10" dir="ltr">36</td>
            <td class="s10">37</td>
        </tr>

        <!--НАЧАЛО ЗАПИСИ О СОТРУДНИКЕ #1------------------------------------------------------------------------------------------->
        <!--Строка 14: #h, #statSTotalDys, statTotalDys-->
        <tr style="height: 25px">
            <th style="height: 25px;" class="row-headers-background">
                <div class="row-header-wrapper" style="line-height: 25px"></div>
            </th>
            <td class="s21" dir="ltr" rowspan="2" style="border-left: 1px solid #000000;">1</td>
            <td class="s22" dir="ltr" rowspan="2">#empFullName#</td>
            <td class="s12" dir="ltr" colspan="2" rowspan="2">#empWorkId#</td>
            <td class="s22" dir="ltr" rowspan="2">#empPos#</td>
            <td class="s12" dir="ltr">#h</td>
            <td class="s12" dir="ltr">#h</td>
            <td class="s12" dir="ltr">#h</td>
            <td class="s12" dir="ltr">#h</td>
            <td class="s12" dir="ltr">#h</td>
            <td class="s12" dir="ltr">#h</td>
            <td class="s12" dir="ltr">#h</td>
            <td class="s12" dir="ltr">#h</td>
            <td class="s12" dir="ltr">#h</td>
            <td class="s12" dir="ltr">#h</td>
            <td class="s12" dir="ltr">#h</td>
            <td class="s12" dir="ltr">#h</td>
            <td class="s12" dir="ltr">#h</td>
            <td class="s12" dir="ltr">#h</td>
            <td class="s12" dir="ltr">#h</td>
            <td class="s12" dir="ltr" colspan="3">#statSTotalDys</td>
            <td class="s12" dir="ltr">#h</td>
            <td class="s12" dir="ltr">#h</td>
            <td class="s12" dir="ltr">#h</td>
            <td class="s12" dir="ltr">#h</td>
            <td class="s12" dir="ltr">#h</td>
            <td class="s12" dir="ltr">#h</td>
            <td class="s12" dir="ltr">#h</td>
            <td class="s12" dir="ltr">#h</td>
            <td class="s12" dir="ltr">#h</td>
            <td class="s12" dir="ltr">#h</td>
            <td class="s12" dir="ltr">#h</td>
            <td class="s12" dir="ltr">#h</td>
            <td class="s12" dir="ltr">#h</td>
            <td class="s12" dir="ltr">#h</td>
            <td class="s12" dir="ltr">#h</td>
            <td class="s12" dir="ltr">#h</td>
            <td class="s12" dir="ltr">statTotalDys</td>
        </tr>

        <!--Строка 15: #r, #statSTotalHrs, statTotalHrs-->
        <tr style="height: 25px">
            <th style="height: 25px;" class="row-headers-background">
                <div class="row-header-wrapper" style="line-height: 25px"></div>
            </th>
            <td class="s12" dir="ltr">#r</td>
            <td class="s12" dir="ltr">#r</td>
            <td class="s12" dir="ltr">#r</td>
            <td class="s12" dir="ltr">#r</td>
            <td class="s12" dir="ltr">#r</td>
            <td class="s12" dir="ltr">#r</td>
            <td class="s12" dir="ltr">#r</td>
            <td class="s12" dir="ltr">#r</td>
            <td class="s12" dir="ltr">#r</td>
            <td class="s12" dir="ltr">#r</td>
            <td class="s12" dir="ltr">#r</td>
            <td class="s12" dir="ltr">#r</td>
            <td class="s12" dir="ltr">#r</td>
            <td class="s12" dir="ltr">#r</td>
            <td class="s12" dir="ltr">#r</td>
            <td class="s12" dir="ltr" colspan="3">#statSTotalHrs</td>
            <td class="s12" dir="ltr">#r</td>
            <td class="s12" dir="ltr">#r</td>
            <td class="s12" dir="ltr">#r</td>
            <td class="s12" dir="ltr">#r</td>
            <td class="s12" dir="ltr">#r</td>
            <td class="s12" dir="ltr">#r</td>
            <td class="s12" dir="ltr">#r</td>
            <td class="s12" dir="ltr">#r</td>
            <td class="s12" dir="ltr">#r</td>
            <td class="s12" dir="ltr">#r</td>
            <td class="s12" dir="ltr">#r</td>
            <td class="s12" dir="ltr">#r</td>
            <td class="s12" dir="ltr">#r</td>
            <td class="s12" dir="ltr">#r</td>
            <td class="s12" dir="ltr">#r</td>
            <td class="s12" dir="ltr">#r</td>
            <td class="s12" dir="ltr">statTotalHrs</td>
        </tr>
        <!--КОНЕЦ ЗАПИСИ О СОТРУДНИКЕ #1------------------------------------------------------------------------------------------->

        <!--НАЧАЛО ЗАПИСИ О СОТРУДНИКЕ #2------------------------------------------------------------------------------------------>
        <!--Строка 14: #h, #statSTotalDys, statTotalDys-->
        <tr style="height: 25px">
            <th style="height: 25px;" class="row-headers-background">
                <div class="row-header-wrapper" style="line-height: 25px"></div>
            </th>
            <td class="s21" dir="ltr" rowspan="2" style="border-left: 1px solid #000000;">2</td>
            <td class="s22" dir="ltr" rowspan="2">#empFullName#</td>
            <td class="s12" dir="ltr" colspan="2" rowspan="2">#empWorkId#</td>
            <td class="s22" dir="ltr" rowspan="2">#empPos#</td>
            <td class="s12" dir="ltr">#h</td>
            <td class="s12" dir="ltr">#h</td>
            <td class="s12" dir="ltr">#h</td>
            <td class="s12" dir="ltr">#h</td>
            <td class="s12" dir="ltr">#h</td>
            <td class="s12" dir="ltr">#h</td>
            <td class="s12" dir="ltr">#h</td>
            <td class="s12" dir="ltr">#h</td>
            <td class="s12" dir="ltr">#h</td>
            <td class="s12" dir="ltr">#h</td>
            <td class="s12" dir="ltr">#h</td>
            <td class="s12" dir="ltr">#h</td>
            <td class="s12" dir="ltr">#h</td>
            <td class="s12" dir="ltr">#h</td>
            <td class="s12" dir="ltr">#h</td>
            <td class="s12" dir="ltr" colspan="3">#statSTotalDys</td>
            <td class="s12" dir="ltr">#h</td>
            <td class="s12" dir="ltr">#h</td>
            <td class="s12" dir="ltr">#h</td>
            <td class="s12" dir="ltr">#h</td>
            <td class="s12" dir="ltr">#h</td>
            <td class="s12" dir="ltr">#h</td>
            <td class="s12" dir="ltr">#h</td>
            <td class="s12" dir="ltr">#h</td>
            <td class="s12" dir="ltr">#h</td>
            <td class="s12" dir="ltr">#h</td>
            <td class="s12" dir="ltr">#h</td>
            <td class="s12" dir="ltr">#h</td>
            <td class="s12" dir="ltr">#h</td>
            <td class="s12" dir="ltr">#h</td>
            <td class="s12" dir="ltr">#h</td>
            <td class="s12" dir="ltr">#h</td>
            <td class="s12" dir="ltr">statTotalDys</td>
        </tr>

        <!--Строка 15: #r, #statSTotalHrs, statTotalHrs-->
        <tr style="height: 25px">
            <th style="height: 25px;" class="row-headers-background">
                <div class="row-header-wrapper" style="line-height: 25px"></div>
            </th>
            <td class="s12" dir="ltr">#r</td>
            <td class="s12" dir="ltr">#r</td>
            <td class="s12" dir="ltr">#r</td>
            <td class="s12" dir="ltr">#r</td>
            <td class="s12" dir="ltr">#r</td>
            <td class="s12" dir="ltr">#r</td>
            <td class="s12" dir="ltr">#r</td>
            <td class="s12" dir="ltr">#r</td>
            <td class="s12" dir="ltr">#r</td>
            <td class="s12" dir="ltr">#r</td>
            <td class="s12" dir="ltr">#r</td>
            <td class="s12" dir="ltr">#r</td>
            <td class="s12" dir="ltr">#r</td>
            <td class="s12" dir="ltr">#r</td>
            <td class="s12" dir="ltr">#r</td>
            <td class="s12" dir="ltr" colspan="3">#statSTotalHrs</td>
            <td class="s12" dir="ltr">#r</td>
            <td class="s12" dir="ltr">#r</td>
            <td class="s12" dir="ltr">#r</td>
            <td class="s12" dir="ltr">#r</td>
            <td class="s12" dir="ltr">#r</td>
            <td class="s12" dir="ltr">#r</td>
            <td class="s12" dir="ltr">#r</td>
            <td class="s12" dir="ltr">#r</td>
            <td class="s12" dir="ltr">#r</td>
            <td class="s12" dir="ltr">#r</td>
            <td class="s12" dir="ltr">#r</td>
            <td class="s12" dir="ltr">#r</td>
            <td class="s12" dir="ltr">#r</td>
            <td class="s12" dir="ltr">#r</td>
            <td class="s12" dir="ltr">#r</td>
            <td class="s12" dir="ltr">#r</td>
            <td class="s12" dir="ltr">statTotalHrs</td>
        </tr>
        <!--КОНЕЦ ЗАПИСИ О СОТРУДНИКЕ #2------------------------------------------------------------------------------------------->

        <!--КОНЕЦ ТАБЛИЦЫ ТАБЕЛЯ--------------------------------------------------------------------------------------------------->



        <!--Строка 16: пусто-->
        <tr style="height: 15px">
            <th style="height: 15px;" class="row-headers-background">
                <div class="row-header-wrapper" style="line-height: 15px"></div>
            </th>
            <td class="s0" colspan="40"></td>
        </tr>

        <!--Строка 17: пусто-->
        <tr style="height: 17px">
            <th style="height: 17px;" class="row-headers-background">
                <div class="row-header-wrapper" style="line-height: 17px"></div>
            </th>
            <td class="s0" colspan="19"></td>
            <td class="s13" colspan="21"></td>
        </tr>



        <!--НАЧАЛО ПОДПИСИ ДОКУМЕНТА-->
        <!--Строка 18: "Ответственный исполнитель", #primExecutorPos#, #primExecutorFName#, Отметка бухгалтерии о принятии настоящего табеля"-->
        <tr style="height: 18px">
            <th style="height: 18px;" class="row-headers-background">
                <div class="row-header-wrapper" style="line-height: 18px"></div>
            </th>
            <td class="s27" dir="ltr" colspan="2" rowspan="3">Ответственный<br>исполнитель</td>
            <td class="s28" dir="ltr" colspan="3" rowspan="3">#primExecutorPos#</td>
            <td class="s0" rowspan="3"></td>
            <td class="s28" colspan="3" rowspan="3"></td>
            <td class="s0" rowspan="3"></td>
            <td class="s29" dir="ltr" colspan="7" rowspan="3">#primExecutorFName#</td>
            <td class="s14" colspan="2" rowspan="3"></td>
            <td class="s0"></td>
            <td class="s30" colspan="20">Отметка бухгалтерии о принятии настоящего табеля</td>
        </tr>

        <!--Строка 19: пусто-->
        <tr style="height: 16px">
            <th style="height: 16px;" class="row-headers-background">
                <div class="row-header-wrapper" style="line-height: 16px"></div>
            </th>
            <td class="s0"></td>
            <td class="s0" colspan="4"></td>
            <td class="s0" colspan="5"></td>
            <td class="s0"></td>
            <td class="s0" colspan="4"></td>
            <td class="s0"></td>
            <td class="s14" colspan="5"></td>
        </tr>

        <!--Строка 20: "Исполнитель"-->
        <tr style="height: 16px">
            <th style="height: 16px;" class="row-headers-background">
                <div class="row-header-wrapper" style="line-height: 16px"></div>
            </th>
            <td class="s0"></td>
            <td class="s0" colspan="4">Исполнитель</td>
            <td class="s31" colspan="5"></td>
            <td class="s0"></td>
            <td class="s13" colspan="4"></td>
            <td class="s0"></td>
            <td class="s16" colspan="5"></td>
        </tr>

        <!--Строка 21: "(должность)", "(подпись)", "(расшифровка подписи)"-->
        <tr style="height: 14px">
            <th style="height: 14px;" class="row-headers-background">
                <div class="row-header-wrapper" style="line-height: 14px"></div>
            </th>
            <td class="s27" colspan="2"></td>
            <td class="s34" colspan="3">(должность)</td>
            <td class="s34"></td>
            <td class="s34" colspan="3">(подпись)</td>
            <td class="s0"></td>
            <td class="s34" colspan="7">(расшифровка подписи)</td>
            <td class="s14" colspan="2"></td>
            <td class="s0"></td>
            <td class="s33" colspan="4"></td>
            <td class="s34" dir="ltr" colspan="5">(должность)</td>
            <td class="s0"></td>
            <td class="s34" dir="ltr" colspan="4">(подпись)</td>
            <td class="s0"></td>
            <td class="s35" dir="ltr" colspan="5">(расшифровка<br>подписи)</td>
        </tr>

        <!--Строка 22: пусто-->
        <tr style="height: 16px">
            <th style="height: 16px;" class="row-headers-background">
                <div class="row-header-wrapper" style="line-height: 16px"></div>
            </th>
            <td class="s27" colspan="2"></td>
            <td class="s36" dir="ltr" colspan="3"></td>
            <td class="s0"></td>
            <td class="s0" colspan="3"></td>
            <td class="s0"></td>
            <td class="s37" dir="ltr" colspan="7"></td>
            <td class="s14" colspan="2"></td>
            <td class="s0"></td>
            <td class="s0" colspan="4"></td>
            <td class="s33" colspan="5"></td>
            <td class="s0"></td>
            <td class="s34" colspan="4"></td>
            <td class="s0"></td>
            <td class="s38" colspan="5"></td>
        </tr>

        <!--Строка 23: "Исполнитель", "#secExecutorPos#, #secExecutorFName#-->
        <tr style="height: 16px">
            <th style="height: 16px;" class="row-headers-background">
                <div class="row-header-wrapper" style="line-height: 16px"></div>
            </th>
            <td class="s27" colspan="2" rowspan="3">Исполнитель</td>
            <td class="s28" dir="ltr" colspan="3" rowspan="3">#secExecutorPos#</td>
            <td class="s0" rowspan="3"></td>
            <td class="s28" colspan="3" rowspan="3"></td>
            <td class="s0" rowspan="3"></td>
            <td class="s29" dir="ltr" colspan="7" rowspan="3">#secExecutorFName#</td>
            <td class="s14" colspan="2" rowspan="3"></td>
            <td class="s0"></td>
            <td class="s0" colspan="4"></td>
            <td class="s34" colspan="5"></td>
            <td class="s0"></td>
            <td class="s34" colspan="4"></td>
            <td class="s0"></td>
            <td class="s38" dir="ltr" colspan="5"></td>
        </tr>

        <!--Строка 24: пусто-->
        <tr style="height: 16px">
            <th style="height: 16px;" class="row-headers-background">
                <div class="row-header-wrapper" style="line-height: 16px"></div>
            </th>
            <td class="s0"></td>
            <td class="s0" colspan="4"></td>
            <td class="s34" colspan="5"></td>
            <td class="s0"></td>
            <td class="s34" colspan="4"></td>
            <td class="s0"></td>
            <td class="s38" dir="ltr" colspan="5"></td>
        </tr>

        <!--Строка 25: пусто-->
        <tr style="height: 16px">
            <th style="height: 16px;" class="row-headers-background">
                <div class="row-header-wrapper" style="line-height: 16px"></div>
            </th>
            <td class="s0"></td>
            <td class="s0" colspan="4"></td>
            <td class="s34" colspan="5"></td>
            <td class="s0"></td>
            <td class="s34" colspan="4"></td>
            <td class="s0"></td>
            <td class="s38" dir="ltr" colspan="5"></td>
        </tr>

        <!--Строка 26: "(должность)", "(подпись)", "(расшифровка подписи)", дата отметки бухгалтерии-->
        <tr style="height: 14px">
            <th style="height: 14px;" class="row-headers-background">
                <div class="row-header-wrapper" style="line-height: 14px"></div>
            </th>
            <td class="s0" colspan="2"></td>
            <td class="s34" colspan="3">(должность)</td>
            <td class="s7"></td>
            <td class="s34" colspan="3">(подпись)</td>
            <td class="s0"></td>
            <td class="s34" colspan="7">(расшифровка подписи)</td>
            <td class="s14" colspan="2"></td>
            <td class="s0"></td>
            <td class="s14" colspan="20">&quot;_______ &quot;_______________________ 20_____ г.</td>
        </tr>

        <!--Строка 27: пусто-->
        <tr style="height: 16px">
            <th style="height: 16px;" class="row-headers-background">
                <div class="row-header-wrapper" style="line-height: 16px"></div>
            </th>
            <td class="s0" colspan="2"></td>
            <td class="s0" colspan="3"></td>
            <td class="s0"></td>
            <td class="s0" colspan="3"></td>
            <td class="s0"></td>
            <td class="s0" colspan="7"></td>
            <td class="s14" colspan="2"></td>
            <td class="s13"></td>
            <td class="s16" colspan="20"></td>
        </tr>

        <!--Строка 28: #tabDate2#-->
        <tr style="height: 16px">
            <th style="height: 16px;" class="row-headers-background">
                <div class="row-header-wrapper" style="line-height: 16px"></div>
            </th>
            <td class="s11" dir="ltr" colspan="2">#tabDate2#</td>
            <td class="s0" colspan="3"></td>
            <td class="s0"></td>
            <td class="s0" colspan="3"></td>
            <td class="s0"></td>
            <td class="s0" colspan="7"></td>
            <td class="s0" colspan="2"></td>
            <td class="s0"></td>
            <td class="s0" colspan="20"></td>
        </tr>
        <!--КОНЕЦ ПОДПИСИ ДОКУМЕНТА------------------------------------------------------------------------------------------------>

        <!--Строка 29: пусто-->
        <tr style="height: 16px">
            <th style="height: 16px;" class="row-headers-background">
                <div class="row-header-wrapper" style="line-height: 16px"></div>
            </th>
            <!--<td class="s0" colspan="40"></td>-->
        </tr>

        </tbody>
    </table>
</div>

</body>
</html>
