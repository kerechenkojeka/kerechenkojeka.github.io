function SwitchTab(my_tab, my_content) {
                var hide = false;
                if ($("#"+my_content).is(":visible")) hide = true;
                $(".vid_rec").find(".open-cat").slideUp("slow");
                if (!hide) {
                                $("#"+my_content).slideDown("slow");
                                $(".alist").removeClass("active2").addClass("no_active2");
                                $(my_tab).addClass("active2").removeClass("no_active2");
                }
                else {
                                $(".alist").removeClass("active2").addClass("no_active2");
                }
}

function SwitchTab2(my_tab2, my_content2) {
document.getElementById('cont_1').style.display = 'none';
document.getElementById('cont_2').style.display = 'none';
document.getElementById('cont_3').style.display = 'none';
document.getElementById(my_content2).style.display = 'block'; 
document.getElementById('tab_1').className = 'no-active';
document.getElementById('tab_2').className = 'no-active';
document.getElementById('tab_3').className = 'no-active';
document.getElementById(my_tab2).className = 'active';
}

