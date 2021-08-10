<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<jsp:include page="head.jsp"></jsp:include>

<body>
	<!-- Pre-loader start -->
	<jsp:include page="threme-loader.jsp"></jsp:include>

	<!-- Pre-loader end -->
	<div id="pcoded" class="pcoded">
		<div class="pcoded-overlay-box"></div>
		<div class="pcoded-container navbar-wrapper">
			<jsp:include page="navbar.jsp"></jsp:include>

			<div class="pcoded-main-container">
				<div class="pcoded-wrapper">
					<jsp:include page="navbarmainmenu.jsp"></jsp:include>
					<div class="pcoded-content">
						<!-- Page-header start -->
						<jsp:include page="page-header.jsp"></jsp:include>
						<!-- Page-header end -->
						<div class="pcoded-inner-content">
							<!-- Main-body start -->
							<div class="main-body">
								<div class="page-wrapper">
									<!-- Page-body start -->
									<div class="page-body">
										<div class="row">
											<h2>Estrutura geral dos sistemas</h2>
											
											<br>
											<h4 class="sub-title">Cadastro do usuário</h4>
											<!--  project and team member end -->
										</div>
									</div>
									<!-- Page-body end -->
								</div>
								<div id="styleSelector"></div>
							</div>
							<!-- Basic Form Inputs card start -->
							<div class="card">
								<div class="card-header">
									<h5>Preencha os campos de cadastro</h5>
									<!-- <span>Add class of <code>.form-control</code> with <code>&lt;input&gt;</code> tag</span> -->
								</div>
								<div class="card-block">
									<h4 class="sub-title">Basic Inputs</h4>

									<form class="form-material">

										<div class="form-group form-default">
											<input type="text" name="nome" id="id" class="form-control"
												required="" readonly="readonly"> <span
												class="form-bar"></span> <label class="float-label">ID</label>
										</div>

										<div class="form-group form-default">
											<input type="text" name="nome" id="nome" class="form-control"
												required=""> <span class="form-bar"></span> <label
												class="float-label">Nome</label>
										</div>

										<div class="form-group form-default">
											<input type="text" name="nome" id="email"
												class="form-control" required="" autocomplete="off"> <span
												class="form-bar"></span> <label class="float-label">E-mail</label>
										</div>


										<div class="form-group form-default">
											<!--<input type="text" name="nome" id="email" class="form-control" required="">-->
											<span class="form-bar" required="" autocomplete="off"></span> <input type="password"
												class="form-control" placeholder="Senha">
										</div>

										<button
											class="btn btn-primary btn-round waves-effect waves-light">Criar
											</button>
										<button
											class="btn btn-success btn-round waves-effect waves-light">Salvar
											</button>
										<button
											class="btn btn-warning btn-round waves-effect waves-light">Editar
											</button>
										<button
											class="btn btn-danger btn-round waves-effect waves-light">Apagar
											</button>
										
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>


			<jsp:include page="jsfile.jsp"></jsp:include>
</body>

</html>
