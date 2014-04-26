
<%@ page import="sdb2.Word" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'word.label', default: 'Word')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-word" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-word" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="root" title="${message(code: 'word.root.label', default: 'Root')}" />
					
						<g:sortableColumn property="rootSanskrit" title="${message(code: 'word.rootSanskrit.label', default: 'Root Sanskrit')}" />
					
						<g:sortableColumn property="rootMeaning" title="${message(code: 'word.rootMeaning.label', default: 'Root Meaning')}" />
					
						<g:sortableColumn property="gender" title="${message(code: 'word.gender.label', default: 'Gender')}" />
					
						<g:sortableColumn property="antak" title="${message(code: 'word.antak.label', default: 'Antak')}" />
					
						<g:sortableColumn property="vibhakti" title="${message(code: 'word.vibhakti.label', default: 'Vibhakti')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${wordInstanceList}" status="i" var="wordInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${wordInstance.id}">${fieldValue(bean: wordInstance, field: "root")}</g:link></td>
					
						<td>${fieldValue(bean: wordInstance, field: "rootSanskrit")}</td>
					
						<td>${fieldValue(bean: wordInstance, field: "rootMeaning")}</td>
					
						<td>${fieldValue(bean: wordInstance, field: "gender")}</td>
					
						<td>${fieldValue(bean: wordInstance, field: "antak")}</td>
					
						<td>${fieldValue(bean: wordInstance, field: "vibhakti")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${wordInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
