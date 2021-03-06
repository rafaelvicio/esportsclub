<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<c:url var="actionAdicionar" value="/administracao/noticias/cadastro"></c:url>

<!-- Page Heading
================================================== -->
<div class="page-heading">
	<div class="container">
		<div class="row">
			<div class="col-md-10 col-md-offset-1">
				<h1 class="page-heading__title">Painel <span class="highlight">de Administração</span></h1>
				<ol class="page-heading__breadcrumb breadcrumb">
					<li><a href="_soccer_index.html">Home</a></li>
					<li><a href="_soccer_shop-list.html">Painel</a></li>
					<li class="active">Administração</li>
				</ol>
			</div>
		</div>
	</div>
</div>

<!-- Content
================================================== -->
<div class="site-content">
	<div class="container">

		<div class="row">

			<div class="col-md-4">

				<!-- Account Navigation -->
				<div class="card">
					<header class="card__header card__header--has-filter">
						<h4>Painel de Administração</h4>
						<a href="/painel/" class="btn btn-default btn-outline btn-xs card-header__button">Painel </a>
					</header>
					<div class="card__content">
						<nav class="df-account-navigation">
							<ul>
								<li class="df-account-navigation--link">
									<a href="/administracao/jogadores">Jogadores</a>
								</li>
								<li class="df-account-navigation--link">
									<a href="/administracao/times">Times</a>
								</li>
								<li class="df-account-navigation--link">
									<a href="/administracao/campeonatos">Campeonatos</a>
								</li>
							</ul>
						</nav>
					</div>
				</div>
				<!-- Account Navigation / End -->

				<!-- Account Navigation -->
				<div class="card">
					<div class="card__header">
						<h4>Painel de Notícias</h4>
					</div>
					<div class="card__content">
						<nav class="df-account-navigation">
							<ul>
								<li class="df-account-navigation--link">
									<a href="/administracao/noticias">Notícias</a>
								</li>
								<li class="df-account-navigation--link">
									<a href="/administracao/jogos">Jogos</a>
								</li>
								<li class="df-account-navigation--link">
									<a href="/administracao/categorias">Categorias</a>
								</li>
								<li class="df-account-navigation--link">
									<a href="/administracao/desenvolvedoras">Desenvolvedoras</a>
								</li>
							</ul>
						</nav>
					</div>
				</div>
				<!-- Account Navigation / End -->
			</div>

			<div class="col-md-8">

				<!-- Personal Information -->
				<div class="card card--lg">
					<div class="card__header">
						<h4>Cadastrar Notícia</h4>
					</div>
					<div class="card__content">
						<form:form action="${actionAdicionar}" method="post" modelAttribute="noticia" cssClass="df-personal-info">

							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<label for="titulo">Título</label>
										<form:input id="titulo" path="titulo" cssClass="form-control" placeholder="Titulo da Noticia"/>
										</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label for="url">Endereço da Notícia</label>
										<form:input id="url" path="url" cssClass="form-control" placeholder="URL da Noticia"/>
									</div>
								</div>
							</div>

							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<label for="url">Banner da Notícia</label>
										<form:input id="banner" path="banner" cssClass="form-control" placeholder="Link Banner"/>
									</div>
								</div>
							</div>

							<div class="row">
								<div class="form-group">
									<label>Jogo:</label>
									<form:select path="jogo.id" cssClass="form-control">
										<form:options items="${jogos}" itemLabel="nome" itemValue="id" />
									</form:select>
								</div>

								<div class="form-group">
									<label>Tags:</label>
								<c:forEach items="${tags}" var="tag">
									<input type="checkbox" class="checkbox checkbox-inline" value="${tag.id}">${tag.nome}<br>
								</c:forEach>
								</div>
							</div>

							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<label for="url">Descrição da Notícia</label>
										<form:input id="descricao" path="descricao" cssClass="form-control" placeholder="Descrição da Noticia"/>
									</div>
								</div>

								<div class="col-md-6">
									<div class="form-group">
										<label for="url">Conteudo da Notícia</label>
										<form:input id="conteudo" path="conteudo" cssClass="form-control" placeholder="Link Banner"/>
									</div>
								</div>
							</div

					</div>

					<div class="text-center"> <input type="submit" value="Cadastrar!" class="btn btn-lg btn-block btn-rounded btn-shadow btn-primary" /> </div>
					</form:form>
					</div>
				</div>
				<!-- Personal Information / End -->
			</div>
		</div>
	</div>
</div>

<!-- Content / End -->