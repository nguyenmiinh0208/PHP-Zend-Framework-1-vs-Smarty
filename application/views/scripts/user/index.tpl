<body class="kc-co-page">
    <div class="kc-co-wrapper">
        <script type="text/javascript">
                $(document).ready(function(){
                    $("#kc-co-nav").addClass("kc-co-clearfix");
                });
                function submitForm(url) {
                    $.ajax({
                        url : url,
                        type : "post",
                        dataType: "json",
                        data : {},
                        success : function (result) {
                            document.getElementById('logout').value = url;
                        //    document.forms[0].submit();
                        },
                        error: function(result) {
                            console.log('ERROR: ', result);
                        },
                    });
                }
        </script>
        <div id="kc-co-container">
            <div class="kc-co-header-wrap">
                <div class="kc-co-header kc-co-clearfix">
                    <div class="kc-co-logo-area">
                        <a href="/FLMAA">
                            <img width="293" height="52" alt="ロゴ" src="../images/logo.gif" />
                        </a>
                    </div>
                    <div class="kc-co-h-menu-area">
                        <ul>
                            <li class="user-item">
                                <img alt="ユーザー" src="../images/user-avatar.png" width="52" height="52"/>
                                <p>FLM管理者&nbsp;様</p>
                            </li>
                            <li>
                                <a id="logout" name="logout" class="btn-logout" href="{$this->url(['controller' => 'user', 'action' => 'logout'], 'default', true)}">
                                    <img alt="ログアウト" src="../images/kc-co-inc_logout-header@2x.png" width="40" height="40"/>ログアウト
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="kc-co-m-menu-area kc-co-default-pc">
                <div class="kc-co-menu-tab">
                    <div class="kc-co-menu-tab-box ">
                        <ul>
                            <li>
                                <a class="kc-co-tab-active" href="javascript:void(0)" onclick="submitForm('/FLMAA/index/index');return false;">マイページ</a>
                            </li>
                            <li>
                                <a href="javascript:void(0)" onclick="submitForm('/FLMAA/index/group-admin');return false;">グループ管理者</a>
                            </li>
                            <li>
                                <a href="javascript:void(0)" onclick="submitForm('/FLMAA/index/lecturer');return false;">講師</a>
                            </li>
                            <li>
                                <a href="javascript:void(0)" onclick="submitForm('/FLMAA/index/admin');return false;">管理者</a>
                            </li>
                        </ul>
                    </div>
                </div>

                <div class="kc-co-s-menu-area-wrap">
                    <div class="kc-co-s-menu-area">
                        <ul id="kc-co-nav">
                            <li class="level_1st">
                                <a href="javascript:void(0)">出退勤</a>
                                <ul>
                                    <li>
                                        <a href="javascript:void(0)" onclick="submitForm('/icm/FLMAA/course-application/init-search');return false;">コース申込</a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)" onclick="submitForm('/icm/FLMAA/application-status/init-search-user');return false;">申込状況参照</a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)" onclick="submitForm('/icm/FLMAA/learning-plan/init-list');return false;">学びの計画一覧</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="level_1st">
                                <a href="javascript:void(0)">日報</a>
                            </li>
                            <li class="level_1st">
                                <a href="javascript:void(0)">コース一覧</a>
                            </li>
                            <li class="level_1st">
                                <a href="javascript:void(0)">KnowledgeC@feへ</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="kc-co-navi-area"></div>
            
            <script type="text/javascript">
                function registration(url) {
                    $.ajax({
                        url : url,
                        type : "post",
                        dataType: "json",
                        data : {},
                        success : function (result) {
                            document.getElementById('currentMonth').value = "";
                        //    document.forms[0].submit();
                        },
                        error: function(result) {
                            console.log('ERROR: ', result);
                        },
                    });
                }
                function month(next_pre) {
                    document.getElementById("next_pre").value = next_pre;
                    document.forms[0].submit();
                }
                $(document).ready(function() {
                    var myVar = setTimeout(function(){
                        myTimer();
                    }, 1000);
                    function myTimer() {
                        var t = document.getElementById("currentTime").innerHTML;
                        var d = new Date();
                        var theDate = d.getFullYear() + '-' + ( d.getMonth() + 1 ) + '-' + d.getDate();
                        var theTime = theDate + " " + t;
                        var newTime = new Date(Date.parse(theTime) + 1000);
                        document.getElementById("currentTime").innerHTML = (newTime.getHours() < 10 ? '0' : '') + newTime.getHours() + ":" + (newTime.getMinutes() < 10 ? '0' : '') + newTime.getMinutes() + ":" + (newTime.getSeconds() < 10 ? '0' : '') + newTime.getSeconds();
                    }
                });
            </script>
            <div class="kc-co-maincontainer kc-co-contents">
                <div class="kc-co-maincontent kc-co-mb50">
                    <form  name="parentsForm" method="post" id="parentsForm" action='/newDemo/public/user/index'>
                        <input type="hidden" id="next_pre" name="next_pre" value=""></input>
                        <input type="hidden" id="currentMonth" name="currentMonth" value="{$currentMonth}"></input>
                        <div class="kc-co-accordion-basic" id="list1b">
                            <h3 class="kc-co-accordion-head" id="kc-co-accordion-notice">お知らせ&nbsp;&nbsp;▼</h3>
                            <div class="kc-co-content-box">
                                <div class="kc-co-no-data-list">
                                    <div>お知らせはありません。</div>
                                </div>
                            </div>
                        </div>
                        <h3>入退室時刻登録</h3>
                        <div class="kc-co-content-box">
                            <div class="kc-co-out-in-box">
                                <table class="kc-co-in-out">
                                    <tbody>
                                        <!-- <td class="align-right">
                                            <button id="start" name="start" class="kc-co-btn-blue" href="javascript:void(0)"  onclick="registration('/zend1/public/user/setStartTime');return false;">入室時刻登録</button>
                                        </td>
                                        <td class="align-left">
                                            <button id="end" name="end" class="kc-co-btn-blue" href="javascript:void(0)"  onclick="registration('/zend1/public/user/setEndTime');return false;">退室時刻登録</button>
                                        </td> -->

                                        <tr>
                                            <td colspan="2" class="sj-co-size40 sj-co-weight-bold sj-co-align-center" style="padding-top: 12px; padding-bottom: 12px;">
                                                <p class="sj-co-di-b">現在時刻</p>&nbsp;&nbsp;&nbsp;<p class="sj-co-di-b" id="currentTime">{$currentTime}</p>&nbsp;&nbsp;&nbsp;&nbsp;
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="align-right">
                                                <button id="start" name="start" class="kc-co-btn-blue" href="{$this->url(['controller' => 'user', 'action' => 'setStartTime'], 'default', false)}">入室時刻登録</button>
                                            </td>
                                            <td class="align-left">
                                                <button id="end" name="end" class="kc-co-btn-blue" href="{$this->url(['controller' => 'user', 'action' => 'setEndTime'], 'default', false)}">退室時刻登録</button>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <h3>入退室時刻一覧</h3>
                        <div class="kc-co-content-box">
                            <div class="kc-co-list-box">
                                <div class="clearfix">
                                    <p id="month-Of-Year" class="pull-left pt10">{$yearmonth}</p>
                                    <button id="Next" name="Next" class="kc-co-btn-next-pre pull-right" type="button" onclick="month('+');return false;">Next &gt;</button>
                                    <button id="Pre" name="Pre" class="kc-co-btn-next-pre pull-right" type="button" onclick="month('-');return false;">&lt; Prev</button>
                                </div>
                                <table class="kc-co-item-list">
                                    <colgroup>
                                        <col width="60">
                                        <col width="60">
                                        <col width="60">
                                        <col width="80">
                                        <col width="80">
                                        <col width="80">
                                        <col width="250">
                                        <col width="250">
                                    </colgroup>
                                    <tr>
                                        <th>月日</th>
                                        <th>曜日</th>
                                        <th>休日</th>
                                        <th>入室時刻</th>
                                        <th>退室時刻</th>
                                        <th>種別</th>
                                        <th>エラー理由・本人申請</th>
                                        <th>事務局追記</th>
                                    </tr>
                                    {foreach $results as $key=>$data}
                                    <tr>
                                        <td>{$key}</td>
                                        <td>{$data['day']}</td>
                                        <td>{$data['holiday']}</td>
                                        <td>{$data['start']}</td>
                                        <td>{$data['end']}</td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        </tr>
                                    {/foreach}
                                </table>
                            </div>
                        </div>
                        <div class="kc-co-hr-none">
                            <hr />
                        </div>
                    </form>
                </div>
            </div>

            <div class="kc-co-footer">
                <p class="kc-st-copyright">Powered by KnowledgeC@fe</p>
            </div>
        </div>
    </div>
</body>