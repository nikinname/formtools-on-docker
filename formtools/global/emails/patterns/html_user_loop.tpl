<p>
  {$LANG.text_email_template_thanks}
</p>

<table cellpadding="0" cellspacing="1">
{literal}{foreach from=$fields item=field}
{if $field.col_name != "submission_date"}
  {if $field.is_file_field == "yes"}
    <tr>
      <td style="font-weight: bold">{$field.field_title}:</td>
      <td>{display_files format="html" files=$FILENAMES_{$field.field_name} folder=$FOLDERURL_{$field.field_name}}</td>
    </tr>
	{else}
    <tr>
      <td style="font-weight: bold">{$field.field_title}:</td>
      <td>{$field.answer}</td>
    </tr>
  {/if}
{/if}
{/foreach}{/literal}
</table>

<p>
  {$LANG.phrase_submission_made}
</p>