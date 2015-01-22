<!DOCTYPE html>
<html>
<head>
	<title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; $SiteConfig.Title</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<% base_tag %>

	<% require javascript('%ThemeDir/polymer/webcomponentsjs/webcomponents.js') %>

	<% require themedCSS('styles') %>

	<link rel="import" href="$ThemeDir/polymer/core-header-panel/core-header-panel.html">
	<link rel="import" href="$ThemeDir/polymer/paper-menu-button/paper-menu-button.html">
	<link rel="import" href="$ThemeDir/polymer/paper-icon-button/paper-icon-button.html">
	<link rel="import" href="$ThemeDir/polymer/paper-dropdown/paper-dropdown.html">
	<link rel="import" href="$ThemeDir/polymer/core-menu/core-menu.html">
	<link rel="import" href="$ThemeDir/polymer/paper-item/paper-item.html">


	<link rel="import" href="$ThemeDir/my-elements/error-element/error-element.html">
	
</head>
<body fullbleed layout vertical>
	<core-header-panel>
		<div class="core-header">			
			<span>$SiteConfig.Title</span>
			<paper-menu-button>
				<paper-icon-button icon="menu" noink></paper-icon-button>
				<paper-dropdown class="dropdown" halign="right">
					<core-menu class="menu">
						<% loop Menu(1) %>
							<paper-item><a href="$Link">$MenuTitle.XML</a></paper-item>
						<% end_loop %>
					</core-menu>
				</paper-dropdown>
			</paper-menu-button>
		</div>
		<div class="content">
			$Layout
		</div>
	</core-header-panel>
</body>
</html>