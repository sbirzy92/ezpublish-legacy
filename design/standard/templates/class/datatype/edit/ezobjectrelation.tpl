{* DO NOT EDIT THIS FILE! Use an override template instead. *}
{let content=$class_attribute.content}

<div class="block">
<label>{'Selection method'|i18n( 'design/standard/class/datatype' )}:</label>
<select name="ContentClass_ezobjectrelation_selection_type_{$class_attribute.id}">
    <option value="0" {eq( $content.selection_type, 0 )|choose( '', 'selected="selected"' )}>{'Browse'|i18n( 'design/standard/class/datatype' )}</option>
    <option value="1" {eq( $content.selection_type, 1 )|choose( '', 'selected="selected"' )}>{'Dropdown list'|i18n( 'design/standard/class/datatype' )}</option>
{* Commented out because somebody forgot to implement this functionality... *}
{*    <option value="2" {eq( $content.selection_type, 2 )|choose( '', 'selected="selected"' )}>{'Dropdown tree'|i18n( 'design/standard/class/datatype' )}</option> *}
</select>
</div>

<div class="block">
<fieldset>
<legend>{'Default selection item'|i18n( 'design/standard/class/datatype' )}</legend>
{section show=$content.default_selection_node}
{let selection_node=fetch( content, node, hash( node_id, $content.default_selection_node ) )}
<table class="list" cellspacing="0">
<tr>
    <th>{'Name'|i18n( 'design/standard/class/datatype' )}</th>
    <th>{'Type'|i18n( 'design/standard/class/datatype' )}</th>
    <th>{'Section'|i18n( 'design/standard/class/datatype' )}</th>
</tr>
<tr>
    <td>{$selection_node.class_identifier|class_icon( small, $selection_node.class_name )}&nbsp;{$selection_node.name|wash}</td>
    <td>{$selection_node.class_name|wash}</td>
    <td>{fetch( section, object, hash( section_id, $selection_node.object.section_id ) ).name|wash}</td>
</tr>
</table>
<input class="button" type="submit" name="CustomActionButton[{$class_attribute.id}_disable_selection_node]" value="{'Remove selection'|i18n('design/standard/class/datatype')}" />
{/let}
{section-else}
<p>{'No item has been selected.'|i18n( 'design/standard/class/datatype' )}</p>
<input class="button-disabled" type="submit" name="CustomActionButton[{$class_attribute.id}_disable_selection_node]" value="{'Remove selection'|i18n('design/standard/class/datatype')}" disabled="disabled" />
{/section}

<input class="button" type="submit" name="CustomActionButton[{$class_attribute.id}_browse_for_selection_node]" value="{'Select item'|i18n('design/standard/class/datatype')}" />
</fieldset>
</div>

<div class="block">
<label>{'Allow fuzzy match'|i18n( 'design/standard/class/datatype' )}:</label>
<input type="checkbox" name="ContentClass_ezobjectrelation_selection_fuzzy_match_{$class_attribute.id}" {section show=$content.fuzzy_match}checked="checked"{/section} />
<input type="hidden" name="ContentClass_ezobjectrelation_selection_fuzzy_match_helper_{$class_attribute.id}" value="1" />
</div>

{/let}
