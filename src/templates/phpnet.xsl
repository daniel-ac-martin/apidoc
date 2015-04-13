<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet
	extension-element-prefixes="str exsl"
	version="1.0"
	xmlns:exsl="http://exslt.org/common"
	xmlns:phpdoc="http://php.net/ns/phpdoc"
	xmlns:str="http://exslt.org/strings"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:xlink="http://www.w3.org/1999/xlink"
>
	<xsl:param name="language" select="en" />
	
	<xsl:variable name="reftitle.classsynopsis"><xsl:choose>
		<xsl:when test="$language='fr'">WRITETRANSLATION</xsl:when>
		<xsl:otherwise>Class synopsis</xsl:otherwise>
	</xsl:choose></xsl:variable>
	<xsl:variable name="reftitle.constants"><xsl:choose>
		<xsl:when test="$language='fr'">WRITETRANSLATION</xsl:when>
		<xsl:otherwise>Predefined Constants</xsl:otherwise>
	</xsl:choose></xsl:variable>
	<xsl:variable name="reftitle.description"><xsl:choose>
		<xsl:when test="$language='fr'">WRITETRANSLATION</xsl:when>
		<xsl:otherwise>Description</xsl:otherwise>
	</xsl:choose></xsl:variable>
	<xsl:variable name="reftitle.errors"><xsl:choose>
		<xsl:when test="$language='fr'">WRITETRANSLATION</xsl:when>
		<xsl:otherwise>Errors/Exceptions</xsl:otherwise>
	</xsl:choose></xsl:variable>
	<xsl:variable name="reftitle.examples"><xsl:choose>
		<xsl:when test="$language='fr'">WRITETRANSLATION</xsl:when>
		<xsl:otherwise>Examples</xsl:otherwise>
	</xsl:choose></xsl:variable>
	<xsl:variable name="reftitle.interfacesynopsis"><xsl:choose>
		<xsl:when test="$language='fr'">WRITETRANSLATION</xsl:when>
		<xsl:otherwise>Interface synopsis</xsl:otherwise>
	</xsl:choose></xsl:variable>
	<xsl:variable name="reftitle.intro"><xsl:choose>
		<xsl:when test="$language='fr'">WRITETRANSLATION</xsl:when>
		<xsl:otherwise>Introduction</xsl:otherwise>
	</xsl:choose></xsl:variable>
	<xsl:variable name="reftitle.parameters"><xsl:choose>
		<xsl:when test="$language='fr'">WRITETRANSLATION</xsl:when>
		<xsl:otherwise>Parameters</xsl:otherwise>
	</xsl:choose></xsl:variable>
	<xsl:variable name="reftitle.properties"><xsl:choose>
		<xsl:when test="$language='fr'">WRITETRANSLATION</xsl:when>
		<xsl:otherwise>Properties</xsl:otherwise>
	</xsl:choose></xsl:variable>
	<xsl:variable name="reftitle.returnvalues"><xsl:choose>
		<xsl:when test="$language='fr'">WRITETRANSLATION</xsl:when>
		<xsl:otherwise>Return Values</xsl:otherwise>
	</xsl:choose></xsl:variable>
	<xsl:variable name="reftitle.seealso"><xsl:choose>
		<xsl:when test="$language='fr'">WRITETRANSLATION</xsl:when>
		<xsl:otherwise>See Also</xsl:otherwise>
	</xsl:choose></xsl:variable>
	
	<xsl:variable name="example.outputs"><xsl:choose>
		<xsl:when test="$language='fr'">WRITETRANSLATION</xsl:when>
		<xsl:otherwise>The above example will output:</xsl:otherwise>
	</xsl:choose></xsl:variable>
	<xsl:variable name="no.function.parameters"><xsl:choose>
		<xsl:when test="$language='fr'">WRITETRANSLATION</xsl:when>
		<xsl:otherwise>This function has no parameters.</xsl:otherwise>
	</xsl:choose></xsl:variable>
	<xsl:variable name="return.void"><xsl:choose>
		<xsl:when test="$language='fr'">WRITETRANSLATION</xsl:when>
		<xsl:otherwise>No value is returned.</xsl:otherwise>
	</xsl:choose></xsl:variable>
	
	<xsl:variable name="Constants"><xsl:choose>
		<xsl:when test="$language='fr'">WRITETRANSLATION</xsl:when>
		<xsl:otherwise>Constants</xsl:otherwise>
	</xsl:choose></xsl:variable>
	<xsl:variable name="Properties"><xsl:choose>
		<xsl:when test="$language='fr'">WRITETRANSLATION</xsl:when>
		<xsl:otherwise>Properties</xsl:otherwise>
	</xsl:choose></xsl:variable>
	<xsl:variable name="Methods"><xsl:choose>
		<xsl:when test="$language='fr'">WRITETRANSLATION</xsl:when>
		<xsl:otherwise>Methods</xsl:otherwise>
	</xsl:choose></xsl:variable>
	<xsl:variable name="InheritedConstants"><xsl:choose>
		<xsl:when test="$language='fr'">WRITETRANSLATION</xsl:when>
		<xsl:otherwise>Inherited constants</xsl:otherwise>
	</xsl:choose></xsl:variable>
	<xsl:variable name="InheritedProperties"><xsl:choose>
		<xsl:when test="$language='fr'">WRITETRANSLATION</xsl:when>
		<xsl:otherwise>Inherited properties</xsl:otherwise>
	</xsl:choose></xsl:variable>
	<xsl:variable name="InheritedMethods"><xsl:choose>
		<xsl:when test="$language='fr'">WRITETRANSLATION</xsl:when>
		<xsl:otherwise>Inherited methods</xsl:otherwise>
	</xsl:choose></xsl:variable>
	
	<xsl:variable name="translate.Available-since"><xsl:choose>
		<xsl:when test="$language='fr'">WRITETRANSLATION</xsl:when>
		<xsl:otherwise>Available since version</xsl:otherwise>
	</xsl:choose></xsl:variable>
	<xsl:variable name="translate.The"><xsl:choose>
		<xsl:when test="$language='fr'">WRITETRANSLATION</xsl:when>
		<xsl:otherwise>The</xsl:otherwise>
	</xsl:choose></xsl:variable>
	<xsl:variable name="translate.class"><xsl:choose>
		<xsl:when test="$language='fr'">WRITETRANSLATION</xsl:when>
		<xsl:otherwise>class</xsl:otherwise>
	</xsl:choose></xsl:variable>
	<xsl:variable name="translate.constructor"><xsl:choose>
		<xsl:when test="$language='fr'">WRITETRANSLATION</xsl:when>
		<xsl:otherwise>constructor</xsl:otherwise>
	</xsl:choose></xsl:variable>
	<xsl:variable name="translate.destructor"><xsl:choose>
		<xsl:when test="$language='fr'">WRITETRANSLATION</xsl:when>
		<xsl:otherwise>destructor</xsl:otherwise>
	</xsl:choose></xsl:variable>
	<xsl:variable name="translate.function"><xsl:choose>
		<xsl:when test="$language='fr'">WRITETRANSLATION</xsl:when>
		<xsl:otherwise>function</xsl:otherwise>
	</xsl:choose></xsl:variable>
	<xsl:variable name="translate.interface"><xsl:choose>
		<xsl:when test="$language='fr'">WRITETRANSLATION</xsl:when>
		<xsl:otherwise>interface</xsl:otherwise>
	</xsl:choose></xsl:variable>
	<xsl:variable name="translate.method"><xsl:choose>
		<xsl:when test="$language='fr'">WRITETRANSLATION</xsl:when>
		<xsl:otherwise>method</xsl:otherwise>
	</xsl:choose></xsl:variable>
	
	<xsl:output indent="yes" cdata-section-elements="programlisting screen" />
	<xsl:strip-space elements="*" />
	<xsl:template match="/">
		<docbook-phd-phpnet>
			<set version="5.0" xmlns="http://docbook.org/ns/docbook">
				<xsl:apply-templates />
			</set>
			<versions>
				<xsl:for-each select="apidoc/class|apidoc/interface"><xsl:call-template name="versions-class" /></xsl:for-each>
				<xsl:for-each select="apidoc/function"><xsl:call-template name="versions-function" /></xsl:for-each>
				<xsl:for-each select="apidoc/global"><xsl:call-template name="versions-variable" /></xsl:for-each>
				<xsl:for-each select="apidoc/namespace"><xsl:call-template name="versions-namespace" /></xsl:for-each>
			</versions>
		</docbook-phd-phpnet>
	</xsl:template>
	
	<xsl:variable name="namespace-delimiter">::</xsl:variable>
	
	<xsl:variable name="source" select="/" />
	
	<!-- Templates for handling namespaces -->
	<xsl:template name="make-full-class-name">
		<xsl:param name="namespace" />
		<xsl:param name="class-name" />
		<xsl:call-template name="parse-name">
			<xsl:with-param name="name">
				<xsl:value-of select="$namespace" /><xsl:value-of select="$namespace-delimiter" /><xsl:value-of select="$class-name" />
			</xsl:with-param>
		</xsl:call-template>
	</xsl:template>
	
	<xsl:template name="make-id-fragment">
		<xsl:param name="name" />
		<xsl:for-each select="str:tokenize($name,$namespace-delimiter)">
			<xsl:if test="position() > 1">.</xsl:if>
			<xsl:value-of select="translate(., 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz')" />
		</xsl:for-each>
	</xsl:template>
	
	<xsl:template name="make-id">
		<xsl:param name="type" select="''" />
		<xsl:param name="namespace" select="''" />
		<xsl:param name="class" select="''" />
		<xsl:param name="name" select="''" />
		<xsl:variable name="fragment-namespace">
			<xsl:call-template name="make-id-fragment">
				<xsl:with-param name="name" select="$namespace" />
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="fragment-class">
			<xsl:call-template name="make-id-fragment">
				<xsl:with-param name="name">
					<xsl:value-of select="$class" />
				</xsl:with-param>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="fragment-name">
			<xsl:call-template name="make-id-fragment">
				<xsl:with-param name="name" select="$name" />
			</xsl:call-template>
		</xsl:variable>
		<xsl:choose>
			<xsl:when test="$class != ''">
				<xsl:variable name="fragment-full-class">
					<xsl:if test="$namespace != ''"><xsl:value-of select="$fragment-namespace" />.</xsl:if><xsl:value-of select="$fragment-class" />
				</xsl:variable>
				<xsl:choose>
					<xsl:when test="$type = 'class'">class.<xsl:value-of select="$fragment-full-class" /></xsl:when>
					<xsl:when test="$type = 'property'"><xsl:value-of select="$fragment-full-class" />.props.<xsl:value-of select="$fragment-name" /></xsl:when>
					<xsl:when test="$type = 'constant'"><xsl:value-of select="$fragment-full-class" />.constants.<xsl:value-of select="$fragment-name" /></xsl:when>
					<xsl:otherwise><xsl:value-of select="$fragment-full-class" />.<xsl:value-of select="$fragment-name" /></xsl:otherwise>
				</xsl:choose>
			</xsl:when>
			<xsl:otherwise>
				<xsl:variable name="fragment-full-name">
					<xsl:if test="$namespace != ''"><xsl:value-of select="$fragment-namespace" />.</xsl:if><xsl:value-of select="$fragment-name" />
				</xsl:variable>
				<xsl:choose>
					<xsl:when test="$type = 'property'">global.<xsl:value-of select="$fragment-full-name" /></xsl:when>
					<xsl:when test="$type = 'constant'">constant.<xsl:value-of select="$fragment-full-name" /></xsl:when>
					<xsl:otherwise>function.<xsl:value-of select="$fragment-full-name" /></xsl:otherwise>
				</xsl:choose>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	
	<xsl:template name="extract-namespace">
		<xsl:param name="full-class-name" />
		<xsl:for-each select="str:tokenize($full-class-name,$namespace-delimiter)[position() != last()]">
			<xsl:if test="position() > 1"><xsl:value-of select="$namespace-delimiter" /></xsl:if>
			<xsl:value-of select="." />
		</xsl:for-each>
	</xsl:template>
	
	<xsl:template name="extract-class-name">
		<xsl:param name="full-class-name" />
		<xsl:value-of select="str:tokenize($full-class-name,$namespace-delimiter)[position() = last()]" />
	</xsl:template>
	
	<xsl:template name="parse-name">
		<xsl:param name="name" />
		<xsl:param name="current-namespace" select="''" />
		<xsl:choose>
			<xsl:when test="substring($name,1,string-length($namespace-delimiter)) = $namespace-delimiter">
				<xsl:value-of select="substring($name,1+string-length($namespace-delimiter))" />
			</xsl:when>
			<xsl:otherwise>
				<xsl:variable name="parsed">
					<xsl:if test="$current-namespace != ''"><xsl:value-of select="$current-namespace" /><xsl:value-of select="$namespace-delimiter" /></xsl:if><xsl:value-of select="$name" />
				</xsl:variable>
				<xsl:variable name="parsed-namespace">
					<xsl:call-template name="extract-namespace">
						<xsl:with-param name="full-class-name" select="$parsed" />
					</xsl:call-template>
				</xsl:variable>
				<xsl:variable name="parsed-name">
					<xsl:call-template name="extract-class-name">
						<xsl:with-param name="full-class-name" select="$parsed" />
					</xsl:call-template>
				</xsl:variable>
				<xsl:choose>
					<xsl:when test="$source/apidoc/namespace[@name=$parsed-namespace]/class[@name=$parsed-name]|$source/apidoc/namespace[@name=$parsed-namespace]/interface[@name=$parsed-name]|$source/apidoc/class[@name=$parsed-name][''=$parsed-namespace]|$source/apidoc/interface[@name=$parsed-name][''=$parsed-namespace]">
						<xsl:value-of select="$parsed" />
					</xsl:when>
					<xsl:otherwise>
						<xsl:value-of select="$name" />
					</xsl:otherwise>
				</xsl:choose>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	
	<!-- Templates for handling inheritance - FIXME: Should we be testing for different function signatures?! -->
	<xsl:template name="build-inheritance-list">
		<xsl:variable name="class" select="." />
		<xsl:variable name="class-name" select="@name" />
		<xsl:variable name="namespace" select="../@name" />
		<xsl:variable name="is_interface" select="name() = 'interface'" />
		
		<xsl:variable name="prelim-inheritance">
			<xsl:for-each select="extends|implements">
				<xsl:call-template name="build-inheritance-list-sub-one">
					<xsl:with-param name="current-namespace" select="$namespace" />
				</xsl:call-template>
			</xsl:for-each>
		</xsl:variable>
		
		<xsl:variable name="inheritance">
			<xsl:for-each select="exsl:node-set($prelim-inheritance)/*">
				<xsl:call-template name="build-inheritance-list-sub-two" />
			</xsl:for-each>
		</xsl:variable>
		
		<!-- Constants -->
		<xsl:for-each select="exsl:node-set($inheritance)/constant">
			<xsl:if test="not($class/property[@name = current()/name])">
				<xsl:copy-of select="." />
			</xsl:if>
		</xsl:for-each>
		
		<xsl:for-each select="property[@constant='yes']">
			<constant>
				<name><xsl:value-of select="@name" /></name>
				<class><xsl:value-of select="$class-name" /></class>
				<namespace><xsl:value-of select="$namespace" /></namespace>
			</constant>
		</xsl:for-each>
		
		<!-- Properties -->
		<xsl:for-each select="exsl:node-set($inheritance)/property">
			<xsl:if test="not($class/property[@name = current()/name])">
				<xsl:copy-of select="." />
			</xsl:if>
		</xsl:for-each>
		
		<xsl:for-each select="property[not(@constant='yes')]">
			<property>
				<name><xsl:value-of select="@name" /></name>
				<class><xsl:value-of select="$class-name" /></class>
				<namespace><xsl:value-of select="$namespace" /></namespace>
			</property>
		</xsl:for-each>
		
		<!-- Constructors -->
		<xsl:for-each select="exsl:node-set($inheritance)/constructor">
			<xsl:if test="not($class/constructor)">
				<xsl:copy-of select="." />
			</xsl:if>
		</xsl:for-each>
		
		<xsl:for-each select="constructor">
			<constructor>
				<xsl:if test="$is_interface or (@abstract = 'yes')">
					<xsl:attribute name="abstract">yes</xsl:attribute>
				</xsl:if>
				<name>__construct</name>
				<class><xsl:value-of select="$class-name" /></class>
				<namespace><xsl:value-of select="$namespace" /></namespace>
			</constructor>
		</xsl:for-each>
		
		<!-- Destructors -->
		<xsl:for-each select="exsl:node-set($inheritance)/destructor">
			<xsl:if test="not($class/destructor)">
				<xsl:copy-of select="." />
			</xsl:if>
		</xsl:for-each>
		
		<xsl:for-each select="destructor">
			<destructor>
				<xsl:if test="$is_interface or (@abstract = 'yes')">
					<xsl:attribute name="abstract">yes</xsl:attribute>
				</xsl:if>
				<name>__destruct</name>
				<class><xsl:value-of select="$class-name" /></class>
				<namespace><xsl:value-of select="$namespace" /></namespace>
			</destructor>
		</xsl:for-each>
		
		<!-- Methods -->
		<xsl:for-each select="exsl:node-set($inheritance)/method">
			<xsl:if test="not($class/method[@name = current()/name])">
				<xsl:copy-of select="." />
			</xsl:if>
		</xsl:for-each>
		
		<xsl:for-each select="method">
			<method>
				<xsl:if test="$is_interface or (@abstract = 'yes')">
					<xsl:attribute name="abstract">yes</xsl:attribute>
				</xsl:if>
				<name><xsl:value-of select="@name" /></name>
				<class><xsl:value-of select="$class-name" /></class>
				<namespace><xsl:value-of select="$namespace" /></namespace>
			</method>
		</xsl:for-each>
	</xsl:template>
	
	<xsl:template name="build-inheritance-list-sub-one">
		<xsl:param name="current-namespace" />
		<xsl:variable name="parsed-name">
			<xsl:call-template name="parse-name">
				<xsl:with-param name="name" select="." />
				<xsl:with-param name="current-namespace" select="$current-namespace" />
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="namespace">
			<xsl:call-template name="extract-namespace">
				<xsl:with-param name="full-class-name" select="$parsed-name" />
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="name">
			<xsl:call-template name="extract-class-name">
				<xsl:with-param name="full-class-name" select="$parsed-name" />
			</xsl:call-template>
		</xsl:variable>
		<xsl:for-each select="/apidoc/namespace[@name=$namespace]/class[@name=$name]|/apidoc/namespace[@name=$namespace]/interface[@name=$name]|/apidoc/class[@name=$name][''=$namespace]|/apidoc/interface[@name=$name][''=$namespace]">
			<xsl:call-template name="build-inheritance-list" />
		</xsl:for-each>
	</xsl:template>
	
	<xsl:template name="build-inheritance-list-sub-two">
		<xsl:variable name="type" select="name()" />
		<xsl:variable name="name" select="name" />
		<xsl:if test="(@abstract != 'yes') or (count(../*[name() = $type][name = $name]) = 1)">
			<xsl:copy-of select="." />
		</xsl:if>
	</xsl:template>
	
	<xsl:template name="build-constant-synopsis">
		<xsl:variable name="name" select="name" />
		<xsl:variable name="class" select="class" />
		<xsl:variable name="namespace" select="namespace" />
		<xsl:variable name="full-class-name">
			<xsl:call-template name="make-full-class-name">
				<xsl:with-param name="namespace" select="namespace" />
				<xsl:with-param name="class-name" select="class" />
			</xsl:call-template>
		</xsl:variable>
		<xsl:for-each select="$source/apidoc/namespace[@name=$namespace]/class[@name=$class]/property[@constant='yes'][@name=$name]|$source/apidoc/class[@name=$class]/property[@constant='yes'][@name=$name][''=$namespace]">
			<xsl:call-template name="variable-sub-synopsis">
				<xsl:with-param name="class-name" select="$class" />
				<xsl:with-param name="id">
					<xsl:call-template name="make-id">
						<xsl:with-param name="type" select="'constant'" />
						<xsl:with-param name="namespace" select="$namespace" />
						<xsl:with-param name="class" select="$class" />
						<xsl:with-param name="name" select="$name" />
					</xsl:call-template>
				</xsl:with-param>
				<xsl:with-param name="namespace" select="$namespace" />
			</xsl:call-template>
		</xsl:for-each>
	</xsl:template>
	
	<xsl:template name="build-property-synopsis">
		<xsl:variable name="name" select="name" />
		<xsl:variable name="class" select="class" />
		<xsl:variable name="namespace" select="namespace" />
		<xsl:variable name="full-class-name">
			<xsl:call-template name="make-full-class-name">
				<xsl:with-param name="namespace" select="namespace" />
				<xsl:with-param name="class-name" select="class" />
			</xsl:call-template>
		</xsl:variable>
		<xsl:for-each select="$source/apidoc/namespace[@name=$namespace]/class[@name=$class]/property[not(@constant='yes')][@name=$name]|$source/apidoc/class[@name=$class]/property[not(@constant='yes')][@name=$name][''=$namespace]">
			<xsl:call-template name="variable-sub-synopsis">
				<xsl:with-param name="class-name" select="$class" />
				<xsl:with-param name="id">
					<xsl:call-template name="make-id">
						<xsl:with-param name="type" select="'property'" />
						<xsl:with-param name="namespace" select="$namespace" />
						<xsl:with-param name="class" select="$class" />
						<xsl:with-param name="name" select="$name" />
					</xsl:call-template>
				</xsl:with-param>
				<xsl:with-param name="namespace" select="$namespace" />
			</xsl:call-template>
		</xsl:for-each>
	</xsl:template>
	
	<xsl:template name="build-constructor-synopsis">
		<xsl:param name="for-interface" select="false()" />
		<xsl:variable name="name" select="name" />
		<xsl:variable name="class" select="class" />
		<xsl:variable name="namespace" select="namespace" />
		<xsl:variable name="full-class-name">
			<xsl:call-template name="make-full-class-name">
				<xsl:with-param name="namespace" select="namespace" />
				<xsl:with-param name="class-name" select="class" />
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="abstract" select="@abstract = 'yes'" />
		<xsl:for-each select="$source/apidoc/namespace[@name=$namespace]/class[@name=$class]/constructor|$source/apidoc/namespace[@name=$namespace]/interface[@name=$class]/constructor|$source/apidoc/class[@name=$class]/constructor[''=$namespace]|$source/apidoc/interface[@name=$class]/constructor[''=$namespace]">
			<xsl:call-template name="function-sub-synopsis">
				<xsl:with-param name="class-name" select="$class" />
				<xsl:with-param name="namespace" select="$namespace" />
				<xsl:with-param name="special" select="'constructor'" />
				<xsl:with-param name="abstract" select="$abstract" />
				<xsl:with-param name="for-interface" select="$for-interface" />
			</xsl:call-template>
		</xsl:for-each>
	</xsl:template>
	
	<xsl:template name="build-destructor-synopsis">
		<xsl:param name="for-interface" select="false()" />
		<xsl:variable name="name" select="name" />
		<xsl:variable name="class" select="class" />
		<xsl:variable name="namespace" select="namespace" />
		<xsl:variable name="full-class-name">
			<xsl:call-template name="make-full-class-name">
				<xsl:with-param name="namespace" select="namespace" />
				<xsl:with-param name="class-name" select="class" />
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="abstract" select="@abstract = 'yes'" />
		<xsl:for-each select="$source/apidoc/namespace[@name=$namespace]/class[@name=$class]/destructor|$source/apidoc/namespace[@name=$namespace]/interface[@name=$class]/destructor|$source/apidoc/class[@name=$class]/destructor[''=$namespace]|$source/apidoc/interface[@name=$class]/destructor[''=$namespace]">
			<xsl:call-template name="function-sub-synopsis">
				<xsl:with-param name="class-name" select="$class" />
				<xsl:with-param name="namespace" select="$namespace" />
				<xsl:with-param name="special" select="'destructor'" />
				<xsl:with-param name="abstract" select="$abstract" />
				<xsl:with-param name="for-interface" select="$for-interface" />
			</xsl:call-template>
		</xsl:for-each>
	</xsl:template>
	
	<xsl:template name="build-method-synopsis">
		<xsl:param name="for-interface" select="false()" />
		<xsl:variable name="name" select="name" />
		<xsl:variable name="class" select="class" />
		<xsl:variable name="namespace" select="namespace" />
		<xsl:variable name="full-class-name">
			<xsl:call-template name="make-full-class-name">
				<xsl:with-param name="namespace" select="namespace" />
				<xsl:with-param name="class-name" select="class" />
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="abstract" select="@abstract = 'yes'" />
		<xsl:for-each select="$source/apidoc/namespace[@name=$namespace]/class[@name=$class]/method[@name=$name]|$source/apidoc/namespace[@name=$namespace]/interface[@name=$class]/method[@name=$name]|$source/apidoc/class[@name=$class]/method[@name=$name][''=$namespace]|$source/apidoc/interface[@name=$class]/method[@name=$name][''=$namespace]">
			<xsl:call-template name="function-sub-synopsis">
				<xsl:with-param name="class-name" select="$class" />
				<xsl:with-param name="namespace" select="$namespace" />
				<xsl:with-param name="abstract" select="$abstract" />
				<xsl:with-param name="for-interface" select="$for-interface" />
			</xsl:call-template>
		</xsl:for-each>
	</xsl:template>
	
	<!-- Templates for real stuff -->
	<xsl:template name="class" match="class|interface">
		<xsl:param name="namespace" select="''" />
		<xsl:variable name="class" select="." />
		<xsl:variable name="class-name" select="@name" />
		<xsl:variable name="full-class-name">
			<xsl:call-template name="make-full-class-name">
				<xsl:with-param name="namespace" select="$namespace" />
				<xsl:with-param name="class-name" select="$class-name" />
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="class-id-segment">
			<xsl:call-template name="make-id-fragment">
				<xsl:with-param name="name" select="$full-class-name" />
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="is-interface" select="name() = 'interface'" />
		<xsl:variable name="inheritance-list">
			<xsl:call-template name="build-inheritance-list" />
		</xsl:variable>
		<xsl:variable name="constants">
			<xsl:for-each select="property[@constant='yes']">
				<xsl:call-template name="variable-sub-synopsis">
					<xsl:with-param name="class-name" select="$class-name" />
					<xsl:with-param name="id">
						<xsl:call-template name="make-id">
							<xsl:with-param name="type" select="'constant'" />
							<xsl:with-param name="namespace" select="$namespace" />
							<xsl:with-param name="class" select="$class-name" />
							<xsl:with-param name="name" select="@name" />
						</xsl:call-template>
					</xsl:with-param>
					<xsl:with-param name="namespace" select="$namespace" />
				</xsl:call-template>
			</xsl:for-each>
		</xsl:variable>
		<xsl:variable name="properties">
			<xsl:for-each select="property[not(@constant='yes')]">
				<xsl:call-template name="variable-sub-synopsis">
					<xsl:with-param name="class-name" select="$class-name" />
					<xsl:with-param name="id">
						<xsl:call-template name="make-id">
							<xsl:with-param name="type" select="'property'" />
							<xsl:with-param name="namespace" select="$namespace" />
							<xsl:with-param name="class" select="$class-name" />
							<xsl:with-param name="name" select="@name" />
						</xsl:call-template>
					</xsl:with-param>
					<xsl:with-param name="namespace" select="$namespace" />
				</xsl:call-template>
			</xsl:for-each>
		</xsl:variable>
		<xsl:variable name="methods">
			<xsl:for-each select="constructor">
				<xsl:call-template name="function-sub-synopsis">
					<xsl:with-param name="class-name" select="$class-name" />
					<xsl:with-param name="class-id-segment" select="$class-id-segment" />
					<xsl:with-param name="namespace" select="$namespace" />
					<xsl:with-param name="special" select="'constructor'" />
					<xsl:with-param name="for-interface" select="$is-interface" />
				</xsl:call-template>
			</xsl:for-each>
			<xsl:for-each select="destructor">
				<xsl:call-template name="function-sub-synopsis">
					<xsl:with-param name="class-name" select="$class-name" />
					<xsl:with-param name="class-id-segment" select="$class-id-segment" />
					<xsl:with-param name="namespace" select="$namespace" />
					<xsl:with-param name="special" select="'destructor'" />
					<xsl:with-param name="for-interface" select="$is-interface" />
				</xsl:call-template>
			</xsl:for-each>
			<xsl:for-each select="method">
				<xsl:call-template name="function-sub-synopsis">
					<xsl:with-param name="class-name" select="$class-name" />
					<xsl:with-param name="class-id-segment" select="$class-id-segment" />
					<xsl:with-param name="namespace" select="$namespace" />
					<xsl:with-param name="for-interface" select="$is-interface" />
				</xsl:call-template>
			</xsl:for-each>
		</xsl:variable>
		<xsl:variable name="inherited-constants">
			<xsl:for-each select="exsl:node-set($inheritance-list)/constant">
				<xsl:if test="not($class/property[@constant='yes'][@name = current()/name])">
					<xsl:call-template name="build-constant-synopsis" />
				</xsl:if>
			</xsl:for-each>
		</xsl:variable>
		<xsl:variable name="inherited-properties">
			<xsl:for-each select="exsl:node-set($inheritance-list)/property">
				<xsl:if test="not($class/property[not(@constant='yes')][@name = current()/name])">
					<xsl:call-template name="build-property-synopsis" />
				</xsl:if>
			</xsl:for-each>
		</xsl:variable>
		<xsl:variable name="inherited-methods">
			<xsl:for-each select="exsl:node-set($inheritance-list)/constructor">
				<xsl:if test="not($class/constructor)">
					<xsl:call-template name="build-constructor-synopsis">
						<xsl:with-param name="for-interface" select="$is-interface" />
					</xsl:call-template>
				</xsl:if>
			</xsl:for-each>
			<xsl:for-each select="exsl:node-set($inheritance-list)/destructor">
				<xsl:if test="not($class/destructor)">
					<xsl:call-template name="build-destructor-synopsis">
						<xsl:with-param name="for-interface" select="$is-interface" />
					</xsl:call-template>
				</xsl:if>
			</xsl:for-each>
			<xsl:for-each select="exsl:node-set($inheritance-list)/method">
				<xsl:if test="not($class/method[@name = current()/name])">
					<xsl:call-template name="build-method-synopsis">
						<xsl:with-param name="for-interface" select="$is-interface" />
					</xsl:call-template>
				</xsl:if>
			</xsl:for-each>
		</xsl:variable>
		<xsl:variable name="text-the-class">
			<xsl:value-of select="$translate.The" /><xsl:value-of select="' '" /><xsl:value-of select="$class-name" /><xsl:value-of select="' '" />
			<xsl:choose>
				<xsl:when test="$is-interface"><xsl:value-of select="$translate.interface" /></xsl:when>
				<xsl:otherwise><xsl:value-of select="$translate.class" /></xsl:otherwise>
			</xsl:choose>
		</xsl:variable>
		<xsl:variable name="text-synopsis">
			<xsl:choose>
				<xsl:when test="$is-interface"><xsl:value-of select="$reftitle.interfacesynopsis" /></xsl:when>
				<xsl:otherwise><xsl:value-of select="$reftitle.classsynopsis" /></xsl:otherwise>
			</xsl:choose>
		</xsl:variable>
		<xsl:variable name="text-title">
			<xsl:choose>
				<xsl:when test="title"><xsl:value-of select="title" /></xsl:when>
				<xsl:otherwise><xsl:value-of select="$text-the-class" /></xsl:otherwise>
			</xsl:choose>
		</xsl:variable>
		<phpdoc:classref>
			<xsl:attribute name="xml:id">class.<xsl:value-of select="$class-id-segment" /></xsl:attribute>
			<title><xsl:value-of select="$text-title" /></title>
			<titleabbrev><xsl:value-of select="$full-class-name" /></titleabbrev>
			<partintro>
				<section>
					<xsl:attribute name="xml:id"><xsl:value-of select="$class-id-segment" />.intro</xsl:attribute>
					<title><xsl:value-of select="$reftitle.intro" /></title>
					<para>
						<xsl:value-of select="description" />
					</para>
				</section>
				<section>
					<xsl:attribute name="xml:id"><xsl:value-of select="$class-id-segment" />.synopsis</xsl:attribute>
					<title><xsl:value-of select="$text-synopsis" /></title>
					<classsynopsis>
						<ooclass><classname><xsl:value-of select="@name" /></classname></ooclass>
						<classsynopsisinfo>
							<ooclass>
								<classname><xsl:value-of select="$full-class-name" /></classname>
							</ooclass>
							<xsl:for-each select="extends">
								<ooclass>
									<modifier>extends</modifier>
									<classname>
										<xsl:call-template name="parse-name">
											<xsl:with-param name="name" select="." />
											<xsl:with-param name="current-namespace" select="$namespace" />
										</xsl:call-template>
									</classname>
								</ooclass>
							</xsl:for-each>
							<xsl:for-each select="implements">
								<oointerface>
									<interfacename>
										<xsl:call-template name="parse-name">
											<xsl:with-param name="name" select="." />
											<xsl:with-param name="current-namespace" select="$namespace" />
										</xsl:call-template>
									</interfacename>
								</oointerface>
							</xsl:for-each>
						</classsynopsisinfo>
						<xsl:if test="$constants != ''">
							<classsynopsisinfo role="comment"><xsl:value-of select="$Constants" /></classsynopsisinfo>
							<xsl:copy-of select="$constants" />
						</xsl:if>
						<xsl:if test="$inherited-constants != ''">
							<classsynopsisinfo role="comment"><xsl:value-of select="$InheritedConstants" /></classsynopsisinfo>
							<xsl:copy-of select="$inherited-constants" />
						</xsl:if>
						<xsl:if test="$properties != ''">
							<classsynopsisinfo role="comment"><xsl:value-of select="$Properties" /></classsynopsisinfo>
							<xsl:copy-of select="$properties" />
						</xsl:if>
						<xsl:if test="$inherited-properties != ''">
							<classsynopsisinfo role="comment"><xsl:value-of select="$InheritedProperties" /></classsynopsisinfo>
							<xsl:copy-of select="$inherited-properties" />
						</xsl:if>
						<xsl:if test="$methods != ''">
							<classsynopsisinfo role="comment"><xsl:value-of select="$Methods" /></classsynopsisinfo>
							<xsl:copy-of select="$methods" />
						</xsl:if>
						<xsl:if test="$inherited-methods != ''">
							<classsynopsisinfo role="comment"><xsl:value-of select="$InheritedMethods" /></classsynopsisinfo>
							<xsl:copy-of select="$inherited-methods" />
						</xsl:if>
					</classsynopsis>
				</section>
				<xsl:if test="property[@constant='yes']">
					<section>
						<xsl:attribute name="xml:id"><xsl:value-of select="$class-id-segment" />.constants</xsl:attribute>
						<title><xsl:value-of select="$reftitle.constants" /></title>
						<variablelist>
							<xsl:for-each select="property[@constant='yes']">
								<xsl:call-template name="variable-sub-listentry">
									<xsl:with-param name="class-name" select="$class-name" />
									<xsl:with-param name="id">
										<xsl:call-template name="make-id">
											<xsl:with-param name="type" select="'constant'" />
											<xsl:with-param name="namespace" select="$namespace" />
											<xsl:with-param name="class" select="$class-name" />
											<xsl:with-param name="name" select="@name" />
										</xsl:call-template>
									</xsl:with-param>
								</xsl:call-template>
							</xsl:for-each>
						</variablelist>
					</section>
				</xsl:if>
				<xsl:if test="property[not(@constant='yes')]">
					<section>
						<xsl:attribute name="xml:id"><xsl:value-of select="$class-id-segment" />.props</xsl:attribute>
						<title><xsl:value-of select="$reftitle.properties" /></title>
						<variablelist>
							<xsl:for-each select="property[not(@constant='yes')]">
								<xsl:call-template name="variable-sub-listentry">
									<xsl:with-param name="class-name" select="$class-name" />
									<xsl:with-param name="id">
										<xsl:call-template name="make-id">
											<xsl:with-param name="type" select="'property'" />
											<xsl:with-param name="namespace" select="$namespace" />
											<xsl:with-param name="class" select="$class-name" />
											<xsl:with-param name="name" select="@name" />
										</xsl:call-template>
									</xsl:with-param>
								</xsl:call-template>
							</xsl:for-each>
						</variablelist>
					</section>
				</xsl:if>
				<xsl:call-template name="seealso">
					<xsl:with-param name="namespace" select="$namespace" />
				</xsl:call-template>
			</partintro>
			<xsl:for-each select="constructor">
				<xsl:call-template name="function">
					<xsl:with-param name="class-name" select="$class-name" />
					<xsl:with-param name="namespace" select="$namespace" />
					<xsl:with-param name="special" select="'constructor'" />
				</xsl:call-template>
			</xsl:for-each>
			<xsl:for-each select="destructor">
				<xsl:call-template name="function">
					<xsl:with-param name="class-name" select="$class-name" />
					<xsl:with-param name="namespace" select="$namespace" />
					<xsl:with-param name="special" select="'destructor'" />
				</xsl:call-template>
			</xsl:for-each>
			<xsl:for-each select="method">
				<xsl:call-template name="function">
					<xsl:with-param name="class-name" select="$class-name" />
					<xsl:with-param name="namespace" select="$namespace" />
				</xsl:call-template>
			</xsl:for-each>
		</phpdoc:classref>
	</xsl:template>
	
	<xsl:template name="function" match="function">
		<xsl:param name="class-name" select="''" />
		<xsl:param name="namespace" select="''" />
		<xsl:param name="special" select="''" />
		<xsl:variable name="name">
			<xsl:choose>
				<xsl:when test="$special = 'constructor'">__construct</xsl:when>
				<xsl:when test="$special = 'destructor'">__destruct</xsl:when>
				<xsl:otherwise><xsl:value-of select="@name" /></xsl:otherwise>
			</xsl:choose>
		</xsl:variable>
		<xsl:variable name="type">
			<xsl:choose>
				<xsl:when test="return/@type"><xsl:value-of select="return/@type" /></xsl:when>
				<xsl:otherwise>void</xsl:otherwise>
			</xsl:choose>
		</xsl:variable>
		<xsl:variable name="id">
			<xsl:call-template name="make-id">
				<xsl:with-param name="type" select="function" />
				<xsl:with-param name="namespace" select="$namespace" />
				<xsl:with-param name="class" select="$class-name" />
				<xsl:with-param name="name" select="$name" />
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="maybe-namespace">
			<xsl:if test="$namespace != ''"><xsl:value-of select="$namespace" /><xsl:value-of select="$namespace-delimiter" /></xsl:if>
		</xsl:variable>
		<xsl:variable name="ref-name">
			<xsl:choose>
				<xsl:when test="$class-name != ''">
					<xsl:value-of select="$class-name" /><xsl:value-of select="$namespace-delimiter" />
				</xsl:when>
				<xsl:otherwise>
					<xsl:value-of select="$maybe-namespace" />
				</xsl:otherwise>
			</xsl:choose>
			<xsl:value-of select="$name" />
		</xsl:variable>
		<xsl:variable name="text-the-function">
			<xsl:choose>
				<xsl:when test="$special = 'constructor'"><xsl:value-of select="$class-name" /><xsl:value-of select="' '" /><xsl:value-of select="$translate.constructor" /></xsl:when>
				<xsl:when test="$special = 'destructor'"><xsl:value-of select="$class-name" /><xsl:value-of select="' '" /><xsl:value-of select="$translate.destructor" /></xsl:when>
				<xsl:otherwise>
					<xsl:value-of select="$translate.The" /><xsl:value-of select="' '" /><xsl:value-of select="$name" /><xsl:value-of select="' '" />
					<xsl:choose>
						<xsl:when test="$class-name != ''"><xsl:value-of select="$translate.method" /></xsl:when>
						<xsl:otherwise><xsl:value-of select="$translate.function" /></xsl:otherwise>
					</xsl:choose>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:variable>
		<xsl:variable name="text-title">
			<xsl:choose>
				<xsl:when test="title"><xsl:value-of select="title" /></xsl:when>
				<xsl:otherwise><xsl:value-of select="$text-the-function" /></xsl:otherwise>
			</xsl:choose>
		</xsl:variable>
		<refentry>
			<xsl:attribute name="xml:id"><xsl:value-of select="$id" /></xsl:attribute>
			<refnamediv>
				<refname><xsl:value-of select="$ref-name" /></refname>
				<refpurpose><xsl:value-of select="$text-title" /></refpurpose>
			</refnamediv>
			<refsect1 role="description">
				<title><xsl:value-of select="$reftitle.description" /></title>
				<xsl:call-template name="function-sub-synopsis">
					<xsl:with-param name="class-name" select="$class-name" />
					<xsl:with-param name="namespace" select="$namespace" />
					<xsl:with-param name="special" select="$special" />
				</xsl:call-template>
				<para>
					<xsl:value-of select="description" />
				</para>
			</refsect1>
			<refsect1 role="parameters">
				<title><xsl:value-of select="$reftitle.parameters" /></title>
				<xsl:choose>
					<xsl:when test="parameter">
						<para>
							<variablelist>
								<xsl:for-each select="parameter">
									<varlistentry>
										<term><parameter><xsl:value-of select="@name" /></parameter></term>
										<listitem>
											<para>
												<xsl:value-of select="." />
											</para>
										</listitem>
									</varlistentry>
								</xsl:for-each>
							</variablelist>
						</para>
					</xsl:when>
					<xsl:otherwise>
						<para><xsl:value-of select="$no.function.parameters" /></para>
					</xsl:otherwise>
				</xsl:choose>
			</refsect1>
			<refsect1 role="returnvalues">
				<title><xsl:value-of select="$reftitle.returnvalues" /></title>
				<para>
					<xsl:choose>
						<xsl:when test="return">
							<xsl:value-of select="return" />
						</xsl:when>
						<xsl:otherwise>
							<xsl:value-of select="$return.void" />
						</xsl:otherwise>
					</xsl:choose>
				</para>
			</refsect1>
			<xsl:if test="throws">
				<refsect1 role="errors">
					<title><xsl:value-of select="$reftitle.errors" /></title>
					<xsl:for-each select="throws">
						<para>
							<!--
							We can give multiple scenarios when the exception
							will be thrown but is it worth messing up the syntax
							in order to support it?
							-->
							Throws <classname><xsl:call-template name="parse-name"><xsl:with-param name="name" select="@type" /><xsl:with-param name="current-namespace" select="$namespace" /></xsl:call-template></classname> when:
							<itemizedlist>
								<simpara>
									<xsl:value-of select="." />
								</simpara>
							</itemizedlist>
						</para>
					</xsl:for-each>
				</refsect1>
			</xsl:if>
			<xsl:if test="example">
				<refsect1 role="examples">
					<title><xsl:value-of select="$reftitle.examples" /></title>
					<xsl:for-each select="example">
						<example>
							<title><xsl:value-of select="title" /></title>
							<programlisting role="php">
								<xsl:value-of select="code" disable-output-escaping="yes" />
							</programlisting>
							<para><xsl:value-of select="$example.outputs" /></para>
							<screen>
								<xsl:value-of select="gives" disable-output-escaping="yes" />
							</screen>
						</example>
					</xsl:for-each>
				</refsect1>
			</xsl:if>
			<xsl:call-template name="seealso">
				<xsl:with-param name="namespace" select="$namespace" />
			</xsl:call-template>
		</refentry>
	</xsl:template>
	
	<xsl:template name="variable" match="global">
		<xsl:param name="namespace" select="''" />
		<xsl:variable name="maybe-namespace">
			<xsl:if test="$namespace != ''"><xsl:value-of select="$namespace" /><xsl:value-of select="$namespace-delimiter" /></xsl:if>
		</xsl:variable>
		<xsl:variable name="id">
			<xsl:call-template name="make-id">
				<xsl:with-param name="type">
					<xsl:choose>
						<xsl:when test="@constant='yes'">constant</xsl:when>
						<xsl:otherwise>property</xsl:otherwise>
					</xsl:choose>
				</xsl:with-param>
				<xsl:with-param name="namespace" select="$namespace" />
				<xsl:with-param name="name" select="@name" />
			</xsl:call-template>
		</xsl:variable>
		<phpdoc:varentry>
			<xsl:attribute name="xml:id"><xsl:value-of select="$id" /></xsl:attribute>
			<xsl:if test="@constant='yes'">
				<xsl:attribute name="role">constant</xsl:attribute>
			</xsl:if>
			<refnamediv>
				<refname><xsl:value-of select="$maybe-namespace" /><xsl:value-of select="@name" /></refname>
				<refpurpose><xsl:value-of select="." /></refpurpose>
			</refnamediv>
			<refsect1 role="description">
				<xsl:call-template name="variable-sub-synopsis">
					<xsl:with-param name="class-name" select="''" />
					<xsl:with-param name="id" select="$id" />
					<xsl:with-param name="namespace" select="$namespace" />
				</xsl:call-template>
				<variablelist>
					<xsl:call-template name="variable-sub-listentry">
						<xsl:with-param name="class-name" select="''" />
						<xsl:with-param name="id" select="''" />
					</xsl:call-template>
				</variablelist>
			</refsect1>
		</phpdoc:varentry>
	</xsl:template>
	
	<xsl:template match="namespace">
		<xsl:for-each select="class|interface">
			<xsl:call-template name="class">
				<xsl:with-param name="namespace" select="../@name" />
			</xsl:call-template>
		</xsl:for-each>
		<xsl:for-each select="global">
			<xsl:call-template name="variable">
				<xsl:with-param name="namespace" select="../@name" />
			</xsl:call-template>
		</xsl:for-each>
		<xsl:for-each select="function">
			<xsl:call-template name="function">
				<xsl:with-param name="namespace" select="../@name" />
			</xsl:call-template>
		</xsl:for-each>
	</xsl:template>
	
	<xsl:template name="function-sub-synopsis">
		<xsl:param name="class-name" />
		<xsl:param name="namespace" select="''" />
		<xsl:param name="special" select="''" />
		<xsl:param name="abstract" select="false()" />
		<xsl:param name="for-interface" select="false()" />
		<xsl:choose>
			<xsl:when test="$special = 'constructor'">
				<constructorsynopsis>
					<xsl:call-template name="function-sub-sub-synopsis">
						<xsl:with-param name="class-name" select="$class-name" />
						<xsl:with-param name="namespace" select="$namespace" />
						<xsl:with-param name="special" select="$special" />
						<xsl:with-param name="abstract" select="$abstract" />
						<xsl:with-param name="for-interface" select="$for-interface" />
					</xsl:call-template>
				</constructorsynopsis>
			</xsl:when>
			<xsl:when test="$special = 'destructor'">
				<destructorsynopsis>
					<xsl:call-template name="function-sub-sub-synopsis">
						<xsl:with-param name="class-name" select="$class-name" />
						<xsl:with-param name="namespace" select="$namespace" />
						<xsl:with-param name="special" select="$special" />
						<xsl:with-param name="abstract" select="$abstract" />
						<xsl:with-param name="for-interface" select="$for-interface" />
					</xsl:call-template>
				</destructorsynopsis>
			</xsl:when>
			<xsl:otherwise>
				<methodsynopsis>
					<xsl:call-template name="function-sub-sub-synopsis">
						<xsl:with-param name="class-name" select="$class-name" />
						<xsl:with-param name="namespace" select="$namespace" />
						<xsl:with-param name="special" select="$special" />
						<xsl:with-param name="abstract" select="$abstract" />
						<xsl:with-param name="for-interface" select="$for-interface" />
					</xsl:call-template>
				</methodsynopsis>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	
	<xsl:template name="function-sub-sub-synopsis">
		<xsl:param name="class-name" />
		<xsl:param name="namespace" />
		<xsl:param name="special" />
		<xsl:param name="abstract" />
		<xsl:param name="for-interface" />
		<xsl:variable name="name">
			<xsl:choose>
				<xsl:when test="$special = 'constructor'">__construct</xsl:when>
				<xsl:when test="$special = 'destructor'">__destruct</xsl:when>
				<xsl:otherwise><xsl:value-of select="@name" /></xsl:otherwise>
			</xsl:choose>
		</xsl:variable>
		<xsl:variable name="type">
			<xsl:choose>
				<xsl:when test="return/@type">
					<xsl:value-of select="return/@type" />
				</xsl:when>
				<xsl:when test="return"></xsl:when>
				<xsl:otherwise>void</xsl:otherwise>
			</xsl:choose>
		</xsl:variable>
		<xsl:variable name="maybe-class-name">
			<xsl:if test="$class-name != ''"><xsl:value-of select="$class-name" /><xsl:value-of select="$namespace-delimiter" /></xsl:if>
		</xsl:variable>
		<xsl:choose>
			<xsl:when test="(@abstract='yes') or $abstract or $for-interface">
				<modifier>abstract</modifier>
			</xsl:when>
			<xsl:when test="@final='yes'">
				<modifier>final</modifier>
			</xsl:when>
		</xsl:choose>
		<xsl:if test="@access">
			<modifier><xsl:value-of select="@access" /></modifier>
		</xsl:if>
		<xsl:if test="string($special) = ''">
			<xsl:if test="@static='yes'">
				<modifier>static</modifier>
			</xsl:if>
			<xsl:call-template name="type">
				<xsl:with-param name="type" select="$type" />
				<xsl:with-param name="current-namespace" select="$namespace" />
			</xsl:call-template>
		</xsl:if>
		<methodname><xsl:value-of select="$maybe-class-name" /><xsl:value-of select="$name" /></methodname>
		<xsl:choose>
			<xsl:when test="parameter">
				<xsl:for-each select="parameter">
					<methodparam>
						<xsl:if test="@optional='yes'">
							<xsl:attribute name="choice">opt</xsl:attribute>
						</xsl:if>
						<xsl:call-template name="type">
							<xsl:with-param name="type" select="@type" />
							<xsl:with-param name="current-namespace" select="$namespace" />
						</xsl:call-template>
						<parameter><xsl:value-of select="@name" /></parameter>
						<xsl:if test="@value">
							<initializer><xsl:value-of select="@value" /></initializer>
						</xsl:if>
					</methodparam>
				</xsl:for-each>
			</xsl:when>
			<xsl:otherwise>
				<void />
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	
	<xsl:template name="variable-sub-synopsis">
		<xsl:param name="class-name" />
		<xsl:param name="id" />
		<xsl:param name="namespace" select="''" />
		<xsl:variable name="maybe-class-name">
			<xsl:if test="$class-name != ''"><xsl:value-of select="$class-name" /><xsl:value-of select="$namespace-delimiter" /></xsl:if>
		</xsl:variable>
		<fieldsynopsis>
			<xsl:choose>
				<xsl:when test="@constant='yes'">
					<modifier>const</modifier>
				</xsl:when>
				<xsl:when test="@access">
					<modifier><xsl:value-of select="@access" /></modifier>
				</xsl:when>
			</xsl:choose>
			<xsl:if test="@static='yes'">
				<modifier>static</modifier>
			</xsl:if>
			<xsl:call-template name="type">
				<xsl:with-param name="type" select="@type" />
				<xsl:with-param name="current-namespace" select="$namespace" />
			</xsl:call-template>
			<varname>
				<xsl:attribute name="linkend">
					<xsl:value-of select="$id" />
				</xsl:attribute>
				<xsl:choose>
					<xsl:when test="@constant='yes'">
						<xsl:value-of select="$maybe-class-name" /><xsl:value-of select="@name" />
					</xsl:when>
					<xsl:otherwise>
						<xsl:value-of select="@name" />
					</xsl:otherwise>
				</xsl:choose>
			</varname>
			<xsl:if test="@value">
				<initializer><xsl:value-of select="@value" /></initializer>
			</xsl:if>
		</fieldsynopsis>
	</xsl:template>
	
	<xsl:template name="variable-sub-listentry">
		<xsl:param name="class-name" />
		<xsl:param name="id" />
		<xsl:variable name="maybe-class-name">
			<xsl:if test="$class-name != ''"><xsl:value-of select="$class-name" /><xsl:value-of select="$namespace-delimiter" /></xsl:if>
		</xsl:variable>
		<varlistentry>
			<xsl:if test="$id != ''">
				<xsl:attribute name="xml:id"><xsl:value-of select="$id" /></xsl:attribute>
			</xsl:if>
			<term>
				<xsl:choose>
					<xsl:when test="@constant='yes'">
						<constant><xsl:value-of select="$maybe-class-name" /><xsl:value-of select="@name" /></constant>
					</xsl:when>
					<xsl:otherwise>
						<varname><xsl:value-of select="@name" /></varname>
					</xsl:otherwise>
				</xsl:choose>
			</term>
			<listitem>
				<para><xsl:value-of select="." /></para>
			</listitem>
		</varlistentry>
	</xsl:template>
	
	<xsl:template name="type">
		<xsl:param name="type" />
		<xsl:param name="current-namespace" select="''" />
		<xsl:choose>
			<xsl:when test="$type = 'void'">
				<type>void</type>
			</xsl:when>
			<xsl:when test="$type != ''">
				<xsl:variable name="parsed-type">
					<xsl:call-template name="parse-name">
						<xsl:with-param name="name" select="$type" />
						<xsl:with-param name="current-namespace" select="$current-namespace" />
					</xsl:call-template>
				</xsl:variable>
				<xsl:variable name="parsed-namespace">
					<xsl:call-template name="extract-namespace">
						<xsl:with-param name="full-class-name" select="$parsed-type" />
					</xsl:call-template>
				</xsl:variable>
				<xsl:variable name="parsed-name">
					<xsl:call-template name="extract-class-name">
						<xsl:with-param name="full-class-name" select="$parsed-type" />
					</xsl:call-template>
				</xsl:variable>
				<xsl:variable name="type-id-segment">
					<xsl:call-template name="make-id-fragment">
						<xsl:with-param name="name" select="$parsed-type" />
					</xsl:call-template>
				</xsl:variable>
				<type>
					<xsl:if test="$source/apidoc/namespace[@name=$parsed-namespace]/class[@name=$parsed-name]|$source/apidoc/namespace[@name=$parsed-namespace]/interface[@name=$parsed-name]|$source/apidoc/class[@name=$parsed-name][''=$parsed-namespace]|$source/apidoc/interface[@name=$parsed-name][''=$parsed-namespace]">
						<xsl:attribute name="linkend">class.<xsl:value-of select="$type-id-segment" /></xsl:attribute>
					</xsl:if>
					<xsl:value-of select="$parsed-type" />
				</type>
			</xsl:when>
			<xsl:otherwise>
				<type>mixed</type>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	
	<xsl:template name="seealso">
		<xsl:param name="namespace" select="''" />
		<xsl:if test="see">
			<refsect1 role="seealso">
				<title><xsl:value-of select="$reftitle.seealso" /></title>
				<para>
					<simplelist>
						<xsl:for-each select="see">
							<xsl:call-template name="see">
								<xsl:with-param name="namespace" select="$namespace" />
							</xsl:call-template>
						</xsl:for-each>
					</simplelist>
				</para>
			</refsect1>
		</xsl:if>
	</xsl:template>
	
	<xsl:template name="see">
		<xsl:param name="namespace" select="''" />
		<member>
			<xsl:choose>
				<xsl:when test="class">
					<classname>
						<xsl:call-template name="parse-name">
							<xsl:with-param name="name" select="class" />
							<xsl:with-param name="current-namespace" select="$namespace" />
						</xsl:call-template>
					</classname>
				</xsl:when>
				<xsl:when test="function">
					<function>
						<xsl:call-template name="parse-name">
							<xsl:with-param name="name" select="function" />
							<xsl:with-param name="current-namespace" select="$namespace" />
						</xsl:call-template>
					</function>
				</xsl:when>
				<xsl:when test="link">
					<link>
						<xsl:attribute name="xlink:href"><xsl:value-of select="link/@href" /></xsl:attribute>
						<xsl:value-of select="link" />
					</link>
				</xsl:when>
				<xsl:when test="method">
					<methodname>
						<xsl:call-template name="parse-name">
							<xsl:with-param name="name" select="method" />
							<xsl:with-param name="current-namespace" select="$namespace" />
						</xsl:call-template>
					</methodname>
				</xsl:when>
			</xsl:choose>
			<xsl:if test="description">
				<xsl:value-of select="' - '" /><xsl:value-of select="description" />
			</xsl:if>
		</member>
	</xsl:template>
	
	<!-- Versions stuff -->
	<xsl:template name="versions-class">
		<xsl:param name="namespace" select="''" />
		<xsl:variable name="class" select="." />
		<xsl:variable name="class-name" select="@name" />
		<xsl:variable name="full-class-name">
			<xsl:call-template name="make-full-class-name">
				<xsl:with-param name="namespace" select="$namespace" />
				<xsl:with-param name="class-name" select="$class-name" />
			</xsl:call-template>
		</xsl:variable>
		<xsl:if test="@version">
			<class>
				<xsl:attribute name="name"><xsl:value-of select="$full-class-name" /></xsl:attribute>
				<xsl:attribute name="from"><xsl:value-of select="$translate.Available-since" /><xsl:value-of select="' '" /><xsl:value-of select="@version" /></xsl:attribute>
			</class>
		</xsl:if>
		<xsl:for-each select="property">
			<xsl:call-template name="versions-variable">
				<xsl:with-param name="class-name" select="$class-name" />
				<xsl:with-param name="namespace" select="$namespace" />
			</xsl:call-template>
		</xsl:for-each>
		<xsl:for-each select="constructor">
			<xsl:call-template name="versions-function">
				<xsl:with-param name="class-name" select="$class-name" />
				<xsl:with-param name="namespace" select="$namespace" />
				<xsl:with-param name="special" select="'constructor'" />
			</xsl:call-template>
		</xsl:for-each>
		<xsl:for-each select="destructor">
			<xsl:call-template name="versions-function">
				<xsl:with-param name="class-name" select="$class-name" />
				<xsl:with-param name="namespace" select="$namespace" />
				<xsl:with-param name="special" select="'destructor'" />
			</xsl:call-template>
		</xsl:for-each>
		<xsl:for-each select="method">
			<xsl:call-template name="versions-function">
				<xsl:with-param name="class-name" select="$class-name" />
				<xsl:with-param name="namespace" select="$namespace" />
			</xsl:call-template>
		</xsl:for-each>
	</xsl:template>
	
	<xsl:template name="versions-function">
		<xsl:param name="class-name" select="''" />
		<xsl:param name="namespace" select="''" />
		<xsl:param name="special" select="''" />
		<xsl:variable name="name">
			<xsl:choose>
				<xsl:when test="$special = 'constructor'">__construct</xsl:when>
				<xsl:when test="$special = 'destructor'">__destruct</xsl:when>
				<xsl:otherwise><xsl:value-of select="@name" /></xsl:otherwise>
			</xsl:choose>
		</xsl:variable>
		<xsl:variable name="maybe-namespace">
			<xsl:if test="$namespace != ''"><xsl:value-of select="$namespace" /><xsl:value-of select="$namespace-delimiter" /></xsl:if>
		</xsl:variable>
		<xsl:variable name="ref-name">
			<xsl:choose>
				<xsl:when test="$class-name != ''">
					<xsl:value-of select="$class-name" /><xsl:value-of select="$namespace-delimiter" />
				</xsl:when>
				<xsl:otherwise>
					<xsl:value-of select="$maybe-namespace" />
				</xsl:otherwise>
			</xsl:choose>
			<xsl:value-of select="$name" />
		</xsl:variable>
		<xsl:if test="@version">
			<function>
				<xsl:attribute name="name"><xsl:value-of select="$ref-name" /></xsl:attribute>
				<xsl:attribute name="from"><xsl:value-of select="$translate.Available-since" /><xsl:value-of select="' '" /><xsl:value-of select="@version" /></xsl:attribute>
			</function>
		</xsl:if>
	</xsl:template>
	
	<xsl:template name="versions-variable">
		<xsl:param name="class-name" select="''" />
		<xsl:param name="namespace" select="''" />
		<xsl:variable name="maybe-namespace">
			<xsl:if test="$namespace != ''"><xsl:value-of select="$namespace" /><xsl:value-of select="$namespace-delimiter" /></xsl:if>
		</xsl:variable>
		<xsl:variable name="ref-name">
			<xsl:choose>
				<xsl:when test="$class-name != ''">
					<xsl:value-of select="$class-name" /><xsl:value-of select="$namespace-delimiter" />
				</xsl:when>
				<xsl:otherwise>
					<xsl:value-of select="$maybe-namespace" />
				</xsl:otherwise>
			</xsl:choose>
			<xsl:value-of select="@name" />
		</xsl:variable>
		<xsl:if test="@version">
			<variable>
				<xsl:attribute name="name"><xsl:value-of select="$ref-name" /></xsl:attribute>
				<xsl:attribute name="from"><xsl:value-of select="$translate.Available-since" /><xsl:value-of select="' '" /><xsl:value-of select="@version" /></xsl:attribute>
			</variable>
		</xsl:if>
	</xsl:template>
	
	<xsl:template name="versions-namespace">
		<xsl:for-each select="class|interface">
			<xsl:call-template name="versions-class">
				<xsl:with-param name="namespace" select="../@name" />
			</xsl:call-template>
		</xsl:for-each>
		<xsl:for-each select="global">
			<xsl:call-template name="versions-variable">
				<xsl:with-param name="namespace" select="../@name" />
			</xsl:call-template>
		</xsl:for-each>
		<xsl:for-each select="function">
			<xsl:call-template name="versions-function">
				<xsl:with-param name="namespace" select="../@name" />
			</xsl:call-template>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>
