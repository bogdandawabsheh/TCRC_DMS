<?php
/**
 * Syntax highlighting extension for MediaWiki 1.5 using GeSHi
 * Copyright (C) 2005 Brion Vibber <brion@pobox.com>
 * http://www.mediawiki.org/
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program; if not, write to the Free Software Foundation, Inc.,
 * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301, USA.
 * http://www.gnu.org/copyleft/gpl.html
 */

/**
 * @file
 * @ingroup Extensions
 * @author Brion Vibber
 *
 * This extension wraps the GeSHi highlighter: http://qbnz.com/highlighter/
 *
 * Unlike the older GeSHi MediaWiki extension floating around, this makes
 * use of the new extension parameter support in MediaWiki 1.5 so it only
 * has to register one tag, <source>.
 *
 * A language is specified like: <source lang="c">void main() {}</source>
 * If you forget, or give an unsupported value, the extension spits out
 * some help text and a list of all supported languages.
 */

if( !defined( 'MEDIAWIKI' ) ) {
	die();
}

$wgExtensionCredits['parserhook']['SyntaxHighlight_GeSHi'] = array(
	'path'           => __FILE__,
	'name'           => 'SyntaxHighlight',
	'author'         => array( 'Brion Vibber', 'Tim Starling', 'Rob Church', 'Niklas Laxström' ),
	'descriptionmsg' => 'syntaxhighlight-desc',
	'url'            => 'https://www.mediawiki.org/wiki/Extension:SyntaxHighlight_GeSHi',
);

// Change these in LocalSettings.php
$wgSyntaxHighlightDefaultLang = null;
$wgSyntaxHighlightKeywordLinks = false;

$dir = __DIR__ . '/';
$wgMessagesDirs['SyntaxHighlight_GeSHi'] = __DIR__ . '/i18n';
$wgExtensionMessagesFiles['SyntaxHighlight_GeSHi'] = $dir . 'SyntaxHighlight_GeSHi.i18n.php';
$wgAutoloadClasses['SyntaxHighlight_GeSHi'] = $dir . 'SyntaxHighlight_GeSHi.class.php';
$wgHooks['ParserFirstCallInit'][] = 'efSyntaxHighlight_GeSHiSetup';
$wgHooks['ExtensionTypes'][] = 'SyntaxHighlight_GeSHi::hSpecialVersion_GeSHi';

//if ( defined( 'MW_SUPPORTS_CONTENTHANDLER' ) ) {
	// since MW 1.21
//	$wgHooks['ContentGetParserOutput'][] = 'SyntaxHighlight_GeSHi::renderHook';
//} else {
	// B/C until 1.20
	$wgHooks['ShowRawCssJs'][] = 'SyntaxHighlight_GeSHi::viewHook';
//}


$wgAutoloadClasses['HighlightGeSHilocal'] = $dir . 'SyntaxHighlight_GeSHi.local.php';
$wgResourceModules['ext.geshi.local'] = array( 'class' => 'HighlightGeSHilocal' );

/**
 * Map content models to the corresponding language names to be used with the highlighter.
 * Pages with one of the given content models will automatically be highlighted.
 */
$wgSyntaxHighlightModels = array(
	CONTENT_MODEL_CSS => 'css',
	CONTENT_MODEL_JAVASCRIPT => 'javascript',
);

/**
 * Register parser hook
 *
 * @param $parser Parser
 */
function efSyntaxHighlight_GeSHiSetup( &$parser ) {
	$parser->setHook( 'source', array( 'SyntaxHighlight_GeSHi', 'parserHook' ) );
	$parser->setHook( 'syntaxhighlight', array( 'SyntaxHighlight_GeSHi', 'parserHook' ) );
	return true;
}
