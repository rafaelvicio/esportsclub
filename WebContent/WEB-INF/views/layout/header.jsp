<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">TreinaWeb Spring MVC</a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<sec:authorize access="isAuthenticated()">
			<sec:authentication property="principal" var="principal" />
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">Noticias<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="/noticias/">Todas</a></li>
						</ul></li>
				</ul>
				<ul class="nav navbar-nav">
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">Times<span class="caret"></span></a>
						<ul class="dropdown-menu">
						<li><a href="/time/cadastro">Cadastro de time</a></li>
						<li><a href="/time">Meus times</a></li>
						</ul></li>
				</ul>
				<ul class="nav navbar-nav">
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">�lbuns<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="/albuns/listar">Listar</a></li>
							<sec:authorize access="hasRole('ROLE_ADMIN')">
								<li><a href="/albuns/adicionar">Cadastrar</a></li>
							</sec:authorize>
						</ul></li>
				</ul>
				<ul class="nav navbar-nav">
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">M�sicas<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="/musicas/listar">Listar</a></li>
							<sec:authorize access="hasRole('ROLE_ADMIN')">
								<li><a href="/musicas/adicionar">Cadastrar</a></li>
							</sec:authorize>
						</ul></li>
				</ul>
				<ul class="nav navbar-nav">
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">Usu�rios<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="/usuarios/listar">Listar</a></li>
							<sec:authorize access="hasRole('ROLE_ADMIN')">
								<li><a href="/usuarios/adicionar">Cadastrar</a></li>
							</sec:authorize>
						</ul></li>
				</ul>
				<ul class="nav navbar-nav">
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">Suporte<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="/usuarios">Meus chamados</a></li>
							<li><a href="/suporte/abrir">Abrir chamado</a></li>
						</ul></li>
				</ul>
				<ul class="nav navbar-nav">
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">Bem-vindo, ${principal.username }<span
							class="caret"></span></a>
						<ul class="dropdown-menu">
						<sec:authorize access="hasRole('ROLE_ADMIN')">
						<li><a href="/administracao/">Painel de Administrador</a></li>
						</sec:authorize>
						<li><a href="/painel/">Painel</a></li>
						<li><a href="/configuracoes/">Configura��es</a></li>
							<li><a href="/logout">Sair</a></li>
						</ul></li>
				</ul>
			</div>
		</sec:authorize>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid -->
</nav>