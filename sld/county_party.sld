<?xml version="1.0" encoding="ISO-8859-1"?>
<StyledLayerDescriptor version="1.0.0" xmlns="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc"
  xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd">
  <NamedLayer>
    <Name>Block Demographic - Party</Name>
    <UserStyle>
      <Title>Block Demographic - Political Party Chloropleth</Title>
      <Abstract>A grayscale style showing the number of identified members of a party in a given geounit</Abstract>
      <FeatureTypeStyle>
        <Rule>
        <Title>&gt; 250K</Title>
    <ogc:Filter>
       <ogc:PropertyIsGreaterThanOrEqualTo>
          <ogc:PropertyName>number</ogc:PropertyName>
          <ogc:Literal>250000</ogc:Literal>
        </ogc:PropertyIsGreaterThanOrEqualTo>
    </ogc:Filter>
    <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">#666666</CssParameter>
            </Fill>
            <Stroke>
              <CssParameter name="stroke">#000000</CssParameter>
              <CssParameter name="stroke-width">1</CssParameter>
            </Stroke>
          </PolygonSymbolizer>
        </Rule>
        <Rule>
        <Title>&gt; 50K</Title>
    <ogc:Filter>
      <ogc:And>
       <ogc:PropertyIsGreaterThanOrEqualTo>
          <ogc:PropertyName>number</ogc:PropertyName>
          <ogc:Literal>50000</ogc:Literal>
        </ogc:PropertyIsGreaterThanOrEqualTo>
        <ogc:PropertyIsLessThan>
          <ogc:PropertyName>number</ogc:PropertyName>
          <ogc:Literal>25000</ogc:Literal>
        </ogc:PropertyIsLessThan>
      </ogc:And>
    </ogc:Filter>          
    <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">#ABABAB</CssParameter>
            </Fill>
            <Stroke>
              <CssParameter name="stroke">#000000</CssParameter>
              <CssParameter name="stroke-width">1</CssParameter>
            </Stroke>
          </PolygonSymbolizer>
        </Rule>
        <Rule>
        <Title>&lt; 25K</Title>
    <ogc:Filter>
        <ogc:PropertyIsLessThan>
          <ogc:PropertyName>number</ogc:PropertyName>
          <ogc:Literal>25000</ogc:Literal>
        </ogc:PropertyIsLessThan>
    </ogc:Filter>          
    <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">#DCDCDC</CssParameter>
            </Fill>
            <Stroke>
              <CssParameter name="stroke">#000000</CssParameter>
              <CssParameter name="stroke-width">1</CssParameter>
            </Stroke>
          </PolygonSymbolizer>
        </Rule>
      </FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>

