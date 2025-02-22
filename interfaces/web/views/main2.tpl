<!DOCTYPE html>

<html lang='ar'>

<head>
    <!--[if lt IE 9]>
  <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
  <![endif]-->

    <title>مشكال النصوص العربية</title>
    <meta charset="UTF-8">
    <link href="/_files/favicon1.png" rel="icon" type="image/png">
    <link href="/_files/adawatstyle.css" rel="stylesheet">
    <!-- <link href="/_files/xzero-rtl/css/bootstrap-arabic.reduced.css" rel="stylesheet">  -->
    <link href="/_files/xzero-rtl/css/bootstrap-arabic.min.css" rel="stylesheet">
<!--
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
-->
<!--
    <link href="/_files/bootstrap-rtl.min.css" rel="stylesheet">
-->


    <meta content="width=device-width, initial-scale=1" name="viewport">
</head>

<body dir="rtl">
    <header>
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-header">
                          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar2">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
                    <a class="navbar-brand" href="/mishkal/main"><img alt="مشكال: تشكيل النصوص العربية" height="120px" src="/_files/logo.png" style='float:right; margin-top:-20px;'> </a>
                </div>

                <div class="collapse navbar-collapse" id="myNavbar2">
                    <ul class="nav navbar-nav pull-right">
                        <li class="active">
                            <a class="active" href="index"><span class="glyphicon glyphicon-home"></span> الرئيسية</a>
                        </li>

                        <li>
                            <a href="/mishkal/doc"><span class="glyphicon glyphicon-info-sign"></span> توثيق</a>
                        </li>

                        <li>
                            <a href="/mishkal/download"><span class="glyphicon glyphicon-download"></span> تحميل</a>
                        </li>

                        <li>
                            <a href="/mishkal/projects"><span class="glyphicon glyphicon-pushpin"></span> مشاريع</a>
                        </li>

                        <li>
                            <a href="/mishkal/contact"><span class="glyphicon glyphicon-envelope"></span> اتصل بنا</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
   </header>

    <div class="container">
        <div class="row clearfix">
            <div class="col-md-9 column">
                <form id="NewForm" name="NewForm" onsubmit="return false">

                    <div class="form-control">
                        <ul class="list-inline close pull-right">
<!--
                            <li><a href="#" id="more" class="pull-right" >أدوات<span class="glyphicon glyphicon-wrench"></span></a>
-->
<!--
                            <li><a href="#" id="mored" class="pull-right" data-toggle="collapse" data-target="#moresection">أدوات<span class="glyphicon glyphicon-wrench"></span></a>
                            </li>
-->
<!--
                            <li>
                                <a href="#" id="vocalize_group" class="pull-right">خيارات<span class="glyphicon glyphicon-cog"></span></a>
                            </li>
-->
                            <li>
                                <button class="close" id="random" title="نص عشوائي"><span aria-hidden="true"><span class="glyphicon glyphicon-random" title="نص عشوائي"></span></span>
                                </button>
                            </li>

                            <li>
                                <button class="close pull-right" id="help" title="مساعدة" data-toggle="modal" href="#modal-container-187711" id="modal-187711"><span aria-hidden="true"><span class="glyphicon glyphicon-question-sign" title="مساعدة" > </span></span><span class="sr-only">مساعدة</span></button>
                            </li>
                            <li>
                                <button type="reset" class="close pull-right" title="مسح"><span aria-hidden="true"><span class="glyphicon glyphicon-remove"></span></span><span class="sr-only">مسح</span></button>
                            </li>

                        </ul>
                    </div>
                    <textarea id="InputText" class="form-control" name="InputText" cols="90" rows="3">{{DefaultText}}</textarea>

                    <div class='form-inline'>
                        <a class="btn btn-success" id="tashkeel" title='تشكيل النص'>تشكيل</a>
                        <a class="btn btn-primary" id="synt" title='تحليل نحويا'><span>إعراب</span></a>
                        <input checked class="checkbox" id="LastMark" type="checkbox" value='1'> حركة الإعراب

                    <button id="more1" class="btn btn-info pull-right" data-toggle="collapse" data-target="#moresection"><span class="glyphicon glyphicon-wrench"></span> أدوات</button>
                        <button class="close pull-right" id="move" title="نسخ الناتج إلى المدخل">
                            <span aria-hidden="true"><span class="glyphicon glyphicon-arrow-up form-control"></span></span>
                            <span class="sr-only">نص عشوائي</span></button>

                        <button class="close pull-right" id="copy" title="نسخ إلى الحافظة">
                            <span aria-hidden="true"><span class="glyphicon glyphicon-copy form-control">نسخ</span></span>
                            <span class="sr-only">نسخ</span></button>

<!--
                        <div class='moresection' id="vocalizesection">

                            <label>تشكيل:</label>

                            <a class="btn btn-primary" id="stripharakat">إزالة</a>
                            <a class="btn btn-primary" id="reducetashkeel"><span>اختزال</span></a> <a class="btn btn-primary" id="comparetashkeel"><span>مطابقة</span></a>
                            <a class="btn btn-primary" id="randomMaqola" title='نص عشوائي'><span>مقولة
              عشوائية</span></a>

                        </div>
-->

<!--
                        <div class='moresection' id="moresection">
-->
                        <div class='collapse pull-right' id="moresection">

                            <div class="btn-group">

                                <button class="btn btn-default dropdown-toggle" data-toggle="dropdown" type="button">خيارات
                                    <span class="caret"></span></button>
                                <ul class="dropdown-menu">
                                    <li> <a id="stripharakat">إزالة</a></li>
                                    <li> <a id="reducetashkeel">اختزال</a></li>
                                    <li> <a id="comparetashkeel">مطابقة</a></li>
                                    <li class="disabled"> <a id="randomMaqola" title='نص عشوائي'>مقولة عشوائية</a></li>
                                </ul>
                            </div>
                            <div class="btn-group">
                                <button class="btn btn-default dropdown-toggle" data-toggle="dropdown" type="button">استخلاص <span class="caret"></span></button>
                                <ul class="dropdown-menu">
                                    <li> <a id="extractEnteties" title='المكونات'> المكونات </a> </li>
                                    <li> <a id="wordtag" title='تصنيف الكلمات إلى أسماء وأفعال'> تصنيف
</a></li>
                                    <li> <a id="showCollocations">المتلازمات</a> </li>
                                    <li> <a id="named" title='استخلاص المسميات'>المسميات</a></li>
                                    <li> <a id="numbred" title='استخلاص المعدودات'>            المعدودات</a> </li>
                                </ul>

                                <div class="btn-group">
                                    <button class="btn btn-default dropdown-toggle" data-toggle="dropdown" type="button">تحويل
                                        <span class="caret"></span></button>

                                    <ul class="dropdown-menu">
                                        <li> <a id="tokenize" title='تحويل النص إلى قائمة كلمات'>تفريق</a></li>

                                        <li> <a id="chunk" title='تقسيم النص إلى جمل'>تقسيم</a></li>
                                        <li> <a id="bigrams" title='تقسيم النص إلى ثنائيات'>ثنائيات</a></li>
                                        <li> <a id="affixate" title='توليد مختلف أشكال الاسم بإضافة الزوائد كحروف العطف والتعريف والضمائر المتصلة'>توليد</a></li>
                                        <li> <a id="normalize" title='توحيد أشكال الهمزات والألفات والتاء المربوطة'>تنميط</a></li>

                                        <li> <a id="language" title='تحديد الجمل العربية في النص'>تحديد اللغة</a></li>

                                        <li> <a id="number" title='تحويل الأعداد إلى كلمات'>ترقيم</a></li>
                                        <li> <a id="inverse" title='ترتيب الكلمات حسب آخر حرفها( القافية)'>ترتيب حسب آخر
            </a></li>
                                        <li> <a id="unshape" title='قلب النص والحروف للاستخدام في البرامج التي لا تدعم العربية'>قلب
            الحروف</a></li>
                                        <li> <a id="poetry" title='تنسيق الشعر العربي العمودي إلى عمودين'>ضبط قصيدة عمودية</a></li>
                                    </ul>

                                    </ul>
                                    <a class="btn btn-primary" id="stem" title='تحليل النص صرفيا'><span>تحليل</span></a>

                                    <a class="btn btn-primary" id="spellcheck" title='تدقيق'><span>تدقيق</span></a>

                                </div>

                            </div>

                        </div>

                    </div>

                </form>
                <!--<section class="bg-danger text-white"> أضفنا زرا لتسهيل النسخ</section>-->
                <output id="result" class="form-control" width=100%%>{{ResultText}}</output>
                <section class="bg-info" id="small_hint"></section>
            </div>

            <div class="col-md-3 column">

                <progress id='loading'></progress>
 <!--              <div class="panel panel-default">
               <div class="panel-heading"> ادعم مشكال</div>
               <div class="panel-body">
<a href="https://www.patreon.com/bePatron?u=23679540" data-patreon-widget-type="become-patron-button">ادعمنا على باتريون</a><script async src="https://c6.patreon.com/becomePatronButton.bundle.js"></script>

           <form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top">
<input type="hidden" name="cmd" value="_s-xclick" />
<input type="hidden" name="hosted_button_id" value="SAEUNQU5QW834" />
<input type="image" src="https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif" border="0" name="submit" title="PayPal - The safer, easier way to pay online!" alt="Donate with PayPal button" />
<img alt="" border="0" src="https://www.paypal.com/en_DZ/i/scr/pixel.gif" width="1" height="1" />
</form>

</div>
-->
</div>
                <section class="bg-info" id="hint"></section>

            </div>
        </div>

        <div class="row clearfix">
            <div class="col-md-9 column">
            </div>
            <div class="col-md-3 column">
            </div>
        </div>
    </div>
    </div>

    <div class="container">
        <div class="row clearfix">
            <div class="col-md-9 column">
                <section class="bg-danger pull-bottom" id="contributeSection">
                    بعد أن تتحقّق من أنّ النص مشكول تشكيلا صحيحا، أرسله إلينا من أجل تحسين أداء البرنامج. مع جزيل شكرنا. <a class="btn btn-info btn-xs" id="contribute"><span>اقترح تشكيلا أفضل</span></a>
                </section>
            </div>
        </div>
        <div class="row clearfix">
           
            <div class="row clearfix" id="myfooter">
                <div class="col-md-3 column" id="mydownloads">
                    <div class="panel panel-default">
                        <div class="panel-heading"> تحميل البرنامج</div>
                        <div class="panel-body"><a class="btn-lg btn-link" href="http://sourceforge.net/projects/mishkal/files/mishkal-Desktop-Win-0.1.4.zip/download"><span class="glyphicon glyphicon-download"></span> 
تحميل:لوندوز</a>
                        <br/><a class="btn-lg btn-link" href="http://sourceforge.net/projects/mishkal/files/"><span class="glyphicon glyphicon-download"></span> 
تحميل إصدرات أخرى</a>
                        <br/><a class="btn-lg btn-link" href="http://github.com/linuxscout/mishkal"><span class="glyphicon glyphicon-download"></span> 
مصدر البرنامج</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 column" id="myprojects">
                    <div class="panel panel-default">
                        <div class="panel-heading">جرّب مشاريعنا</div>
                        <div class="panel-body">
                             <div class="container-fluid">


    <div class="row imagetiles">
        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                            <a href="http://ayaspell.sf.net"><img src="/_files/images/ayaspell.png" alt="التدقيق الإملائي" class="img-responsive"></a>
        </div>
        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
            <a href="http://qutrub.arabeyes.org"><img src="/_files/images/qutrub.jpg" alt="قطرب " class="img-responsive"></a>
            </div>
        </div>
        <div class="row imagetiles">
        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
        <a href="http://adawat.sf.net"><img src="/_files/images/adawat.png" alt="أدوات" class="img-responsive"></a>
        </div>
        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
        <a href="http://radif.sf.net"> <img src="/_files/images/radif.png" alt="الرديف" class="img-responsive"></a>

        </div>
    </div>
        <div class="row imagetiles">
        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
        <a href="http://pypi.python.org/pypi/PyArabic/"><img src="/_files/images/pyarabic.png" alt="مكتبة بيثون العربية" class="img-responsive"></a>
        </div>
        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
        <a href="http://pypi.python.org/pypi/Tashaphyne/"><img src="/_files/images/tashaphyne.png" alt="التحليل الصرفي" class="img-responsive"></a>

        </div>
    </div>
</div>
<!--
                            <a href="http://qutrub.arabeyes.org"><img src="/_files/images/qutrub.jpg" alt="قطرب"></a>
                            <a href="http://adawat.sf.net"><img src="/_files/images/adawat.png" alt="أدوات"></a>
                            <a href="http://radif.sf.net"> <img src="/_files/images/radif.png" alt="الرديف"></a>
                            <a href="http://ayaspell.sf.net"><img src="/_files/images/ayaspell.png" alt="التدقيق الإملائي"></a>
                            <a href="http://pypi.python.org/pypi/PyArabic/"><img src="/_files/images/pyarabic.png" alt="مكتبة بيثون العربية"></a>
                            <a href="http://pypi.python.org/pypi/Tashaphyne/"><img src="/_files/images/tashaphyne.png" alt="التحليل الصرفي"></a>
-->
                        </div>
                    </div>
                     
               </div>
                <div class="col-md-3 column" id="mycontacts">
                    <div class="panel panel-default">
                        <div class="panel-heading">للتواصل</div>
                        <div class="panel-body">

                            <a href="/mishkal/contact"><span class="glyphicon glyphicon-envelope"></span> للاتصال</a>
                            <br/> <a href="http://blog.tahadz.com"><span class="glyphicon glyphicon-globe"></span> مدونتي</a>
<!--
                            <div class="media">
-->
<!--
  <div class="media-right">
    <img src="/_files/images/dreamdevdz.png" class="media-object" style="width:100px">
  </div>
  <div class="media-body">
    <h4 class="media-heading">الاس</h4>
     من شركة <a href="https://dreamdev.dz/"> DreamDev.dz
    </a>
  </div>
-->
<!--
</div>
-->
                            <br/> الاستضافة بدعم من شركة <a href="https://dreamdev.dz/"> DreamDev.dz<span class="glyphicon glyphicon-globe"></span><br/><img src="/_files/images/dreamdevdz.png" style="width:100px"></a>

                        </div>
                    </div>
                </div>
           

            </div>
        </div>
    </div>

    <section id="help">
        <div class="modal fade" id="modal-container-187711">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button class="close" data-dismiss="modal" type="button">×</button>

                        <h4 class="modal-title" id="myModalLabel">مساعدة <span class=
            "glyphicon glyphicon-question-sign"></span></h4>
                    </div>

                    <div class="modal-body">
                        <ul>
                            <li>أكتب النص في الخانة، ثم اضغط على زر التشكيل.</li>

                            <li>انتظر حتى تظهر النتيجة.</li>

                            <li>اضغط على الكلمة للحصول على اقتراحات التشكيل الأخرى.</li>

                            <li>اضغط على زر أدوات أخرى للحصول على خدمات أخرى.</li>
                        </ul>
                    </div>

                    <div class="modal-footer">
                        <button class="btn btn-default" data-dismiss="modal" type="button">إغلاق</button>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <script>
        //~ var script = "%(script)s";
        var script = "";
    </script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <!--<script  src="/_files/jquery-3.3.1.min.js"></script>-->

    <script async src="/_files/xzero-rtl/js/bootstrap-arabic.min.js"></script>

    <script async src="/_files/cytoscape.min.js"></script>
    
<!--
    <script async src="/_files/adawat.min.js"></script>
-->
    <script async src="/_files/adawat.js"></script>
    </span>
</body>

</html>
