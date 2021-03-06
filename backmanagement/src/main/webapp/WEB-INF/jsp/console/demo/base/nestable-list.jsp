<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/include/base-param.jsp"%>
<link type="text/css" rel="stylesheet" href="${webroot}/madmin/vendors/jquery-nestable/nestable.css">
<div class="row animated fadeInUp">
	<div class="col-lg-12">
		<div class="row">
			<div class="col-lg-12">
				<div class="panel">
					<div class="panel-body">
						<p>
							<strong>对应的每个树型结构的动态输出</strong>
						</p>
						<p>Style1</p>
						<textarea id="nestable-output"></textarea>
						<p>Style2</p>
						<textarea id="nestable2-output"></textarea>
						<p>Style3</p>
						<textarea id="nestable3-output"></textarea>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-6">
				<div class="panel">
					<div class="panel-body">
						<h4 class="block-heading">Style 1</h4>
						<div id="nestable" class="dd">
							<ol class="dd-list">
								<li data-id="1" class="dd-item">
									<div class="dd-handle">Item 1</div>
								</li>
								<li data-id="2" class="dd-item">
									<div class="dd-handle">Item 2</div>
									<ol class="dd-list">
										<li data-id="3" class="dd-item">
											<div class="dd-handle">Item 3</div>
										</li>
										<li data-id="4" class="dd-item">
											<div class="dd-handle">Item 4</div>
										</li>
										<li data-id="5" class="dd-item">
											<div class="dd-handle">Item 5</div>
											<ol class="dd-list">
												<li data-id="6" class="dd-item">
													<div class="dd-handle">Item 6</div>
												</li>
												<li data-id="7" class="dd-item">
													<div class="dd-handle">Item 7</div>
												</li>
												<li data-id="8" class="dd-item">
													<div class="dd-handle">Item 8</div>
												</li>
											</ol>
										</li>
										<li data-id="9" class="dd-item">
											<div class="dd-handle">Item 9</div>
										</li>
										<li data-id="10" class="dd-item">
											<div class="dd-handle">Item 10</div>
										</li>
									</ol>
								</li>
								<li data-id="11" class="dd-item">
									<div class="dd-handle">Item 11</div>
								</li>
								<li data-id="12" class="dd-item">
									<div class="dd-handle">Item 12</div>
								</li>
							</ol>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-6">
				<div class="panel">
					<div class="panel-body">
						<h4 class="block-heading">Style 2</h4>
						<div id="nestable2" class="dd">
							<ol class="dd-list">
								<li data-id="13" class="dd-item">
									<div class="dd-handle">Item 13</div>
								</li>
								<li data-id="14" class="dd-item">
									<div class="dd-handle">Item 14</div>
								</li>
								<li data-id="15" class="dd-item">
									<div class="dd-handle">Item 15</div>
									<ol class="dd-list">
										<li data-id="16" class="dd-item">
											<div class="dd-handle">Item 16</div>
										</li>
										<li data-id="17" class="dd-item">
											<div class="dd-handle">Item 17</div>
										</li>
										<li data-id="18" class="dd-item">
											<div class="dd-handle">Item 18</div>
										</li>
									</ol>
								</li>
							</ol>
						</div>
					</div>
				</div>
				<div class="panel">
					<div class="panel-body">
						<h4 class="block-heading">Style 3</h4>
						<div id="nestable3" class="dd">
							<ol class="dd-list">
								<li data-id="13" class="dd-item dd3-item">
									<div class="dd-handle dd3-handle"></div>
									<div class="dd3-content">Item 13</div>
								</li>
								<li data-id="14" class="dd-item dd3-item">
									<div class="dd-handle dd3-handle"></div>
									<div class="dd3-content">Item 14</div>
								</li>
								<li data-id="15" class="dd-item dd3-item">
									<div class="dd-handle dd3-handle"></div>
									<div class="dd3-content">Item 15</div>
									<ol class="dd-list">
										<li data-id="16" class="dd-item dd3-item">
											<div class="dd-handle dd3-handle"></div>
											<div class="dd3-content">Item 16</div>
										</li>
										<li data-id="17" class="dd-item dd3-item">
											<div class="dd-handle dd3-handle"></div>
											<div class="dd3-content">Item 17</div>
										</li>
										<li data-id="18" class="dd-item dd3-item">
											<div class="dd-handle dd3-handle"></div>
											<div class="dd3-content">Item 18</div>
										</li>
									</ol>
								</li>
							</ol>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script src="${webroot}/madmin/vendors/jquery-nestable/jquery.nestable.js"></script>
<script src="${webroot}/js/ui-nestable-list.js"></script>