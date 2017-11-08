<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/include/base-param.jsp"%>
<div class="row animated fadeInUp">
	<div class="col-lg-12">
		<div class="row">
			<div class="col-lg-12">
				<div class="row">
					<div class="col-lg-6">
						<h3>可以关闭的 Tabs</h3>
						<ul class="closeable-tabs nav nav-tabs">
							<li class="active"><a href="#home" data-toggle="tab">
									<button type="button" class="close closeTab mlm">x</button>Home
							</a></li>
							<li><a href="#profile" data-toggle="tab">
									<button type="button" class="close closeTab mlm">x</button>Profile
							</a></li>
							<li><a href="#dropdown1" tabindex="-1" data-toggle="tab">
									<button type="button" class="close closeTab mlm">x</button>@fat
							</a></li>
							<li><a href="#dropdown2" tabindex="-1" data-toggle="tab">
									<button type="button" class="close closeTab mlm">x</button>@mdo
							</a></li>
						</ul>
						<div id="myCloseableTabContent" class="tab-content">
							<div id="home" class="tab-pane fade in active">
								<p>Raw denim you probably haven't heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro
									synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro
									keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat
									salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui. Wolf salvia
									freegan, sartorial keffiyeh echo park vegan.</p>
							</div>
							<div id="profile" class="tab-pane fade">
								<p>Food truck fixie locavore, accusamus mcsweeney's marfa nulla single-origin coffee squid. Exercitation +1
									labore velit, blog sartorial PBR leggings next level wes anderson artisan four loko farm-to-table craft beer
									twee. Qui photo booth letterpress, commodo enim craft beer mlkshk aliquip jean shorts ullamco ad vinyl cillum
									PBR. Homo nostrud organic, assumenda labore aesthetic magna delectus mollit. Keytar helvetica VHS salvia yr,
									vero magna velit sapiente labore stumptown. Vegan fanny pack odio cillum wes anderson 8-bit, sustainable jean
									shorts beard ut DIY ethical culpa terry richardson biodiesel. Art party scenester stumptown, tumblr butcher
									vero sint qui sapiente accusamus tattooed echo park.</p>
							</div>
							<div id="dropdown1" class="tab-pane fade">
								<p>Etsy mixtape wayfarers, ethical wes anderson tofu before they sold out mcsweeney's organic lomo retro
									fanny pack lo-fi farm-to-table readymade. Messenger bag gentrify pitchfork tattooed craft beer, iphone
									skateboard locavore carles etsy salvia banksy hoodie helvetica. DIY synth PBR banksy irony. Leggings gentrify
									squid 8-bit cred pitchfork. Williamsburg banh mi whatever gluten-free, carles pitchfork biodiesel fixie etsy
									retro mlkshk vice blog. Scenester cred you probably haven't heard of them, vinyl craft beer blog stumptown.
									Pitchfork sustainable tofu synth chambray yr.</p>
							</div>
							<div id="dropdown2" class="tab-pane fade">
								<p>Trust fund seitan letterpress, keytar raw denim keffiyeh etsy art party before they sold out master
									cleanse gluten-free squid scenester freegan cosby sweater. Fanny pack portland seitan DIY, art party locavore
									wolf cliche high life echo park Austin. Cred vinyl keffiyeh DIY salvia PBR, banh mi before they sold out
									farm-to-table VHS viral locavore cosby sweater. Lomo wolf viral, mustache readymade thundercats keffiyeh craft
									beer marfa ethical. Wolf salvia freegan, sartorial keffiyeh echo park vegan.</p>
							</div>
						</div>
					</div>
					<div class="col-lg-6">
						<h3>默认 Tabs</h3>
						<ul id="myTab" class="nav nav-tabs">
							<li class="active"><a href="#home" data-toggle="tab">Home</a></li>
							<li><a href="#profile" data-toggle="tab">Profile</a></li>
							<li class="dropdown"><a id="myDrop" href="#" data-toggle="dropdown" class="dropdown-toggle">Dropdown
									&nbsp;<b class="fa fa-angle-down"></b>
							</a>
								<ul role="menu" aria-labelledby="myDrop" class="dropdown-menu">
									<li><a href="#dropdown1" tabindex="-1" data-toggle="tab">@fat</a></li>
									<li><a href="#dropdown2" tabindex="-1" data-toggle="tab">@mdo</a></li>
								</ul></li>
						</ul>
						<div id="myTabContent" class="tab-content">
							<div id="home" class="tab-pane fade in active">
								<p>Raw denim you probably haven't heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro
									synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro
									keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat
									salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui. Wolf salvia
									freegan, sartorial keffiyeh echo park vegan.</p>
							</div>
							<div id="profile" class="tab-pane fade">
								<p>Food truck fixie locavore, accusamus mcsweeney's marfa nulla single-origin coffee squid. Exercitation +1
									labore velit, blog sartorial PBR leggings next level wes anderson artisan four loko farm-to-table craft beer
									twee. Qui photo booth letterpress, commodo enim craft beer mlkshk aliquip jean shorts ullamco ad vinyl cillum
									PBR. Homo nostrud organic, assumenda labore aesthetic magna delectus mollit. Keytar helvetica VHS salvia yr,
									vero magna velit sapiente labore stumptown. Vegan fanny pack odio cillum wes anderson 8-bit, sustainable jean
									shorts beard ut DIY ethical culpa terry richardson biodiesel. Art party scenester stumptown, tumblr butcher
									vero sint qui sapiente accusamus tattooed echo park.</p>
							</div>
							<div id="dropdown1" class="tab-pane fade">
								<p>Etsy mixtape wayfarers, ethical wes anderson tofu before they sold out mcsweeney's organic lomo retro
									fanny pack lo-fi farm-to-table readymade. Messenger bag gentrify pitchfork tattooed craft beer, iphone
									skateboard locavore carles etsy salvia banksy hoodie helvetica. DIY synth PBR banksy irony. Leggings gentrify
									squid 8-bit cred pitchfork. Williamsburg banh mi whatever gluten-free, carles pitchfork biodiesel fixie etsy
									retro mlkshk vice blog. Scenester cred you probably haven't heard of them, vinyl craft beer blog stumptown.
									Pitchfork sustainable tofu synth chambray yr.</p>
							</div>
							<div id="dropdown2" class="tab-pane fade">
								<p>Trust fund seitan letterpress, keytar raw denim keffiyeh etsy art party before they sold out master
									cleanse gluten-free squid scenester freegan cosby sweater. Fanny pack portland seitan DIY, art party locavore
									wolf cliche high life echo park Austin. Cred vinyl keffiyeh DIY salvia PBR, banh mi before they sold out
									farm-to-table VHS viral locavore cosby sweater. Lomo wolf viral, mustache readymade thundercats keffiyeh craft
									beer marfa ethical. Wolf salvia freegan, sartorial keffiyeh echo park vegan.</p>
							</div>
						</div>
					</div>
					<div class="col-lg-12"></div>
					<div class="col-lg-6">
						<h3>左侧 Tabs</h3>
						<div class="tabbable tabs-left">
							<ul id="myTab2" class="nav nav-tabs">
								<li class="active"><a href="#home4" data-toggle="tab">Home</a></li>
								<li><a href="#profile4" data-toggle="tab">Profile</a></li>
								<li class="dropdown"><a id="myTabDrop2" href="#" data-toggle="dropdown" class="dropdown-toggle">Dropdown
										&nbsp;<b class="fa fa-angle-down"></b>
								</a>
									<ul role="menu" aria-labelledby="myTabDrop2" class="dropdown-menu">
										<li><a href="#dropdown9" tabindex="-1" data-toggle="tab">@fat</a></li>
										<li><a href="#dropdown10" tabindex="-1" data-toggle="tab">@mdo</a></li>
									</ul></li>
							</ul>
							<div id="myTabContent2" class="tab-content">
								<div id="home4" class="tab-pane fade in active">
									<p>Raw denim you probably haven't heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro
										synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro
										keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat
										salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p>
								</div>
								<div id="profile4" class="tab-pane fade">
									<p>Food truck fixie locavore, accusamus mcsweeney's marfa nulla single-origin coffee squid. Exercitation +1
										labore velit, blog sartorial PBR leggings next level wes anderson artisan four loko farm-to-table craft beer
										twee. Qui photo booth letterpress, commodo enim craft beer mlkshk aliquip jean shorts ullamco ad vinyl cillum
										PBR. Homo nostrud organic, assumenda labore aesthetic magna delectus mollit. Keytar helvetica VHS salvia yr,
										vero magna velit sapiente labore stumptown. Vegan fanny pack odio cillum wes anderson 8-bit, sustainable jean
										shorts beard ut DIY ethical culpa terry richardson biodiesel. Art party scenester stumptown, tumblr butcher
										vero sint qui sapiente accusamus tattooed echo park.</p>
								</div>
								<div id="dropdown9" class="tab-pane fade">
									<p>Etsy mixtape wayfarers, ethical wes anderson tofu before they sold out mcsweeney's organic lomo retro
										fanny pack lo-fi farm-to-table readymade. Messenger bag gentrify pitchfork tattooed craft beer, iphone
										skateboard locavore carles etsy salvia banksy hoodie helvetica. DIY synth PBR banksy irony. Leggings gentrify
										squid 8-bit cred pitchfork. Williamsburg banh mi whatever gluten-free, carles pitchfork biodiesel fixie etsy
										retro mlkshk vice blog. Scenester cred you probably haven't heard of them, vinyl craft beer blog stumptown.
										Pitchfork sustainable tofu synth chambray yr.</p>
								</div>
								<div id="dropdown10" class="tab-pane fade">
									<p>Trust fund seitan letterpress, keytar raw denim keffiyeh etsy art party before they sold out master
										cleanse gluten-free squid scenester freegan cosby sweater. Fanny pack portland seitan DIY, art party locavore
										wolf cliche high life echo park Austin. Cred vinyl keffiyeh DIY salvia PBR, banh mi before they sold out
										farm-to-table VHS viral locavore cosby sweater. Lomo wolf viral, mustache readymade thundercats keffiyeh craft
										beer marfa ethical. Wolf salvia freegan, sartorial keffiyeh echo park vegan.</p>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-6">
						<h3>右侧 Tabs</h3>
						<div class="tabbable tabs-right">
							<ul id="myTab3" class="nav nav-tabs">
								<li class="active"><a href="#home5" data-toggle="tab">Home</a></li>
								<li><a href="#profile5" data-toggle="tab">Profile</a></li>
								<li class="dropdown"><a id="myTabDrop3" href="#" data-toggle="dropdown" class="dropdown-toggle">Dropdown
										&nbsp;<b class="fa fa-angle-down"></b>
								</a>
									<ul role="menu" aria-labelledby="myTabDrop3" class="dropdown-menu pull-right">
										<li><a href="#dropdown11" tabindex="-1" data-toggle="tab">@fat</a></li>
										<li><a href="#dropdown12" tabindex="-1" data-toggle="tab">@mdo</a></li>
									</ul></li>
							</ul>
							<div id="myTabContent3" class="tab-content">
								<div id="home5" class="tab-pane fade in active">
									<p>Raw denim you probably haven't heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro
										synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro
										keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat
										salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p>
								</div>
								<div id="profile5" class="tab-pane fade">
									<p>Food truck fixie locavore, accusamus mcsweeney's marfa nulla single-origin coffee squid. Exercitation +1
										labore velit, blog sartorial PBR leggings next level wes anderson artisan four loko farm-to-table craft beer
										twee. Qui photo booth letterpress, commodo enim craft beer mlkshk aliquip jean shorts ullamco ad vinyl cillum
										PBR. Homo nostrud organic, assumenda labore aesthetic magna delectus mollit. Keytar helvetica VHS salvia yr,
										vero magna velit sapiente labore stumptown. Vegan fanny pack odio cillum wes anderson 8-bit, sustainable jean
										shorts beard ut DIY ethical culpa terry richardson biodiesel. Art party scenester stumptown, tumblr butcher
										vero sint qui sapiente accusamus tattooed echo park.</p>
								</div>
								<div id="dropdown11" class="tab-pane fade">
									<p>Etsy mixtape wayfarers, ethical wes anderson tofu before they sold out mcsweeney's organic lomo retro
										fanny pack lo-fi farm-to-table readymade. Messenger bag gentrify pitchfork tattooed craft beer, iphone
										skateboard locavore carles etsy salvia banksy hoodie helvetica. DIY synth PBR banksy irony. Leggings gentrify
										squid 8-bit cred pitchfork. Williamsburg banh mi whatever gluten-free, carles pitchfork biodiesel fixie etsy
										retro mlkshk vice blog. Scenester cred you probably haven't heard of them, vinyl craft beer blog stumptown.
										Pitchfork sustainable tofu synth chambray yr.</p>
								</div>
								<div id="dropdown12" class="tab-pane fade">
									<p>Trust fund seitan letterpress, keytar raw denim keffiyeh etsy art party before they sold out master
										cleanse gluten-free squid scenester freegan cosby sweater. Fanny pack portland seitan DIY, art party locavore
										wolf cliche high life echo park Austin. Cred vinyl keffiyeh DIY salvia PBR, banh mi before they sold out
										farm-to-table VHS viral locavore cosby sweater. Lomo wolf viral, mustache readymade thundercats keffiyeh craft
										beer marfa ethical. Wolf salvia freegan, sartorial keffiyeh echo park vegan.</p>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-6">
						<h3>两端对齐 Tabs</h3>
						<ul id="myTab4" class="nav nav-tabs nav-justified">
							<li class="active"><a href="#home6" data-toggle="tab">Home</a></li>
							<li><a href="#profile6" data-toggle="tab">Profile</a></li>
							<li class="dropdown"><a id="myTabDrop4" href="#" data-toggle="dropdown" class="dropdown-toggle">Dropdown
									&nbsp;<b class="fa fa-angle-down"></b>
							</a>
								<ul role="menu" aria-labelledby="myTabDrop4" class="dropdown-menu">
									<li><a href="#dropdown13" tabindex="-1" data-toggle="tab">@fat</a></li>
									<li><a href="#dropdown14" tabindex="-1" data-toggle="tab">@mdo</a></li>
								</ul></li>
						</ul>
						<div id="myTabContent4" class="tab-content">
							<div id="home6" class="tab-pane fade in active">
								<p>Raw denim you probably haven't heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro
									synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro
									keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat
									salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p>
							</div>
							<div id="profile6" class="tab-pane fade">
								<p>Food truck fixie locavore, accusamus mcsweeney's marfa nulla single-origin coffee squid. Exercitation +1
									labore velit, blog sartorial PBR leggings next level wes anderson artisan four loko farm-to-table craft beer
									twee. Qui photo booth letterpress, commodo enim craft beer mlkshk aliquip jean shorts ullamco ad vinyl cillum
									PBR. Homo nostrud organic, assumenda labore aesthetic magna delectus mollit. Keytar helvetica VHS salvia yr,
									vero magna velit sapiente labore stumptown. Vegan fanny pack odio cillum wes anderson 8-bit, sustainable jean
									shorts beard ut DIY ethical culpa terry richardson biodiesel. Art party scenester stumptown, tumblr butcher
									vero sint qui sapiente accusamus tattooed echo park.</p>
							</div>
							<div id="dropdown13" class="tab-pane fade">
								<p>Etsy mixtape wayfarers, ethical wes anderson tofu before they sold out mcsweeney's organic lomo retro
									fanny pack lo-fi farm-to-table readymade. Messenger bag gentrify pitchfork tattooed craft beer, iphone
									skateboard locavore carles etsy salvia banksy hoodie helvetica. DIY synth PBR banksy irony. Leggings gentrify
									squid 8-bit cred pitchfork. Williamsburg banh mi whatever gluten-free, carles pitchfork biodiesel fixie etsy
									retro mlkshk vice blog. Scenester cred you probably haven't heard of them, vinyl craft beer blog stumptown.
									Pitchfork sustainable tofu synth chambray yr.</p>
							</div>
							<div id="dropdown14" class="tab-pane fade">
								<p>Trust fund seitan letterpress, keytar raw denim keffiyeh etsy art party before they sold out master
									cleanse gluten-free squid scenester freegan cosby sweater. Fanny pack portland seitan DIY, art party locavore
									wolf cliche high life echo park Austin. Cred vinyl keffiyeh DIY salvia PBR, banh mi before they sold out
									farm-to-table VHS viral locavore cosby sweater. Lomo wolf viral, mustache readymade thundercats keffiyeh craft
									beer marfa ethical. Wolf salvia freegan, sartorial keffiyeh echo park vegan.</p>
							</div>
						</div>
					</div>
					<div class="col-lg-6">
						<h3>下侧 Tabs</h3>
						<div class="tabbable tabs-below">
							<div id="myTabContent1" class="tab-content">
								<div id="home2" class="tab-pane fade in active">
									<p>Raw denim you probably haven't heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro
										synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro
										keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat
										salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p>
								</div>
								<div id="profile2" class="tab-pane fade">
									<p>Food truck fixie locavore, accusamus mcsweeney's marfa nulla single-origin coffee squid. Exercitation +1
										labore velit, blog sartorial PBR leggings next level wes anderson artisan four loko farm-to-table craft beer
										twee. Qui photo booth letterpress, commodo enim craft beer mlkshk aliquip jean shorts ullamco ad vinyl cillum
										PBR. Homo nostrud organic, assumenda labore aesthetic magna delectus mollit. Keytar helvetica VHS salvia yr,
										vero magna velit sapiente labore stumptown. Vegan fanny pack odio cillum wes anderson 8-bit, sustainable jean
										shorts beard ut DIY ethical culpa terry richardson biodiesel. Art party scenester stumptown, tumblr butcher
										vero sint qui sapiente accusamus tattooed echo park.</p>
								</div>
								<div id="dropdown5" class="tab-pane fade">
									<p>Etsy mixtape wayfarers, ethical wes anderson tofu before they sold out mcsweeney's organic lomo retro
										fanny pack lo-fi farm-to-table readymade. Messenger bag gentrify pitchfork tattooed craft beer, iphone
										skateboard locavore carles etsy salvia banksy hoodie helvetica. DIY synth PBR banksy irony. Leggings gentrify
										squid 8-bit cred pitchfork. Williamsburg banh mi whatever gluten-free, carles pitchfork biodiesel fixie etsy
										retro mlkshk vice blog. Scenester cred you probably haven't heard of them, vinyl craft beer blog stumptown.
										Pitchfork sustainable tofu synth chambray yr.</p>
								</div>
								<div id="dropdown6" class="tab-pane fade">
									<p>Trust fund seitan letterpress, keytar raw denim keffiyeh etsy art party before they sold out master
										cleanse gluten-free squid scenester freegan cosby sweater. Fanny pack portland seitan DIY, art party locavore
										wolf cliche high life echo park Austin. Cred vinyl keffiyeh DIY salvia PBR, banh mi before they sold out
										farm-to-table VHS viral locavore cosby sweater. Lomo wolf viral, mustache readymade thundercats keffiyeh craft
										beer marfa ethical. Wolf salvia freegan, sartorial keffiyeh echo park vegan.</p>
								</div>
							</div>
							<ul id="myTab1" class="nav nav-tabs">
								<li class="active"><a href="#home2" data-toggle="tab">Home</a></li>
								<li><a href="#profile2" data-toggle="tab">Profile</a></li>
								<li class="dropdown dropup"><a id="myTabDrop1" href="#" data-toggle="dropdown" class="dropdown-toggle">Dropdown
										&nbsp;<b class="fa fa-angle-up"></b>
								</a>
									<ul role="menu" aria-labelledby="myTabDrop1" class="dropdown-menu">
										<li><a href="#dropdown5" tabindex="-1" data-toggle="tab">@fat</a></li>
										<li><a href="#dropdown6" tabindex="-1" data-toggle="tab">@mdo</a></li>
									</ul></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-6">
				<h3>可折叠的</h3>
				<div id="accordion" class="panel-group">
					<div class="panel panel-default">
						<div class="panel-heading">
							<a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" style="display: block;">Collapsible
								Group Item #1</a>
						</div>
						<div id="collapseOne" class="panel-collapse collapse in">
							<div class="panel-body">Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry
								richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt
								laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla
								assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea
								proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic
								synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading">
							<a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" style="display: block;">Collapsible
								Group Item #2</a>
						</div>
						<div id="collapseTwo" class="panel-collapse collapse">
							<div class="panel-body">Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry
								richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt
								laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla
								assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea
								proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic
								synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading">
							<a data-toggle="collapse" data-parent="#accordion" href="#collapseThree" style="display: block;">Collapsible
								Group Item #3</a>
						</div>
						<div id="collapseThree" class="panel-collapse collapse">
							<div class="panel-body">Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry
								richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt
								laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla
								assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea
								proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic
								synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-6">
				<h3>可折叠有图标的</h3>
				<div id="accordion1" class="panel-group">
					<div class="panel panel-default">
						<div class="panel-heading">
							<a data-toggle="collapse" data-parent="#accordion1" href="#collapseOne1">Collapsible Group Item #1</a><i
								class="indicator glyphicon glyphicon-chevron-down pull-right mts text-muted"></i>
						</div>
						<div id="collapseOne1" class="panel-collapse collapse in">
							<div class="panel-body">Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry
								richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt
								laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla
								assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea
								proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic
								synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading">
							<a data-toggle="collapse" data-parent="#accordion1" href="#collapseTwo1">Collapsible Group Item #2</a><i
								class="indicator glyphicon glyphicon-chevron-left pull-right mts text-muted"></i>
						</div>
						<div id="collapseTwo1" class="panel-collapse collapse">
							<div class="panel-body">Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry
								richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt
								laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla
								assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea
								proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic
								synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading">
							<a data-toggle="collapse" data-parent="#accordion1" href="#collapseThree1">Collapsible Group Item #3</a><i
								class="indicator glyphicon glyphicon-chevron-left pull-right mts text-muted"></i>
						</div>
						<div id="collapseThree1" class="panel-collapse collapse">
							<div class="panel-body">Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry
								richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt
								laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla
								assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea
								proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic
								synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<h3>滚动监听(ScrollSpy)</h3>
				<nav id="navbar-example2" role="navigation" class="navbar navbar-default navbar-static">
					<div class="container-fluid">
						<div class="navbar-header">
							<button type="button" data-toggle="collapse" data-target=".bs-example-js-navbar-scrollspy" class="navbar-toggle">
								<span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span
									class="icon-bar"></span>
							</button>
							<a href="#" class="navbar-brand">Project Name</a>
						</div>
						<div class="collapse navbar-collapse bs-example-js-navbar-scrollspy">
							<ul class="nav navbar-nav">
								<li><a href="#fat">@fat</a></li>
								<li><a href="#mdo">@mdo</a></li>
								<li class="dropdown active"><a id="navbarDrop1" href="#" data-toggle="dropdown" class="dropdown-toggle">Dropdown
										&nbsp;<b class="caret"></b>
								</a>
									<ul role="menu" aria-labelledby="navbarDrop1" class="dropdown-menu">
										<li><a href="#one" tabindex="-1">one</a></li>
										<li><a href="#two" tabindex="-1">two</a></li>
										<li class="divider"></li>
										<li><a href="#three" tabindex="-1">three</a></li>
									</ul></li>
							</ul>
						</div>
					</div>
				</nav>
				<div class="panel">
					<div class="panel-body">
						<div data-spy="scroll" data-target="#navbar-example2" data-offset="0" class="scrollspy-example">
							<h4 id="fat">@fat</h4>
							<p>Ad leggings keytar, brunch id art party dolor labore. Pitchfork yr enim lo-fi before they sold out qui.
								Tumblr farm-to-table bicycle rights whatever. Anim keffiyeh carles cardigan. Velit seitan mcsweeney's photo
								booth 3 wolf moon irure. Cosby sweater lomo jean shorts, williamsburg hoodie minim qui you probably haven't
								heard of them et cardigan trust fund culpa biodiesel wes anderson aesthetic. Nihil tattooed accusamus, cred
								irony biodiesel keffiyeh artisan ullamco consequat.</p>
							<h4 id="mdo">@mdo</h4>
							<p>Veniam marfa mustache skateboard, adipisicing fugiat velit pitchfork beard. Freegan beard aliqua cupidatat
								mcsweeney's vero. Cupidatat four loko nisi, ea helvetica nulla carles. Tattooed cosby sweater food truck,
								mcsweeney's quis non freegan vinyl. Lo-fi wes anderson +1 sartorial. Carles non aesthetic exercitation quis
								gentrify. Brooklyn adipisicing craft beer vice keytar deserunt.</p>
							<h4 id="one">one</h4>
							<p>Occaecat commodo aliqua delectus. Fap craft beer deserunt skateboard ea. Lomo bicycle rights adipisicing
								banh mi, velit ea sunt next level locavore single-origin coffee in magna veniam. High life id vinyl, echo park
								consequat quis aliquip banh mi pitchfork. Vero VHS est adipisicing. Consectetur nisi DIY minim messenger bag.
								Cred ex in, sustainable delectus consectetur fanny pack iphone.</p>
							<h4 id="two">two</h4>
							<p>In incididunt echo park, officia deserunt mcsweeney's proident master cleanse thundercats sapiente veniam.
								Excepteur VHS elit, proident shoreditch +1 biodiesel laborum craft beer. Single-origin coffee wayfarers irure
								four loko, cupidatat terry richardson master cleanse. Assumenda you probably haven't heard of them art party
								fanny pack, tattooed nulla cardigan tempor ad. Proident wolf nesciunt sartorial keffiyeh eu banh mi sustainable.
								Elit wolf voluptate, lo-fi ea portland before they sold out four loko. Locavore enim nostrud mlkshk brooklyn
								nesciunt.</p>
							<h4 id="three">three</h4>
							<p>Ad leggings keytar, brunch id art party dolor labore. Pitchfork yr enim lo-fi before they sold out qui.
								Tumblr farm-to-table bicycle rights whatever. Anim keffiyeh carles cardigan. Velit seitan mcsweeney's photo
								booth 3 wolf moon irure. Cosby sweater lomo jean shorts, williamsburg hoodie minim qui you probably haven't
								heard of them et cardigan trust fund culpa biodiesel wes anderson aesthetic. Nihil tattooed accusamus, cred
								irony biodiesel keffiyeh artisan ullamco consequat.</p>
							<p>Keytar twee blog, culpa messenger bag marfa whatever delectus food truck. Sapiente synth id assumenda.
								Locavore sed helvetica cliche irony, thundercats you probably haven't heard of them consequat hoodie gluten-free
								lo-fi fap aliquip. Labore elit placeat before they sold out, terry richardson proident brunch nesciunt quis
								cosby sweater pariatur keffiyeh ut helvetica artisan. Cardigan craft beer seitan readymade velit. VHS chambray
								laboris tempor veniam. Anim mollit minim commodo ullamco thundercats.</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script src="${webroot}/js/ui-tabs.js"></script>