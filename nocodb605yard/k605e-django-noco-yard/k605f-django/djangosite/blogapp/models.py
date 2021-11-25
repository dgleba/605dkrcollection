from django.db import models
from django.urls import reverse

class none_to_empty(models.CharField):
    def get_prep_value(self, value):
        if value == None:
            return ''
        return value

# =================================================

class Tagg(models.Model):
    title = models.CharField(max_length=45, blank=True, null=True)

    def __str__(self):
        return  str(self.id) + " - " + self.title

class Post(models.Model):

    # Fields
    created = models.DateTimeField(auto_now_add=True, editable=False)
    last_updated = models.DateTimeField(auto_now=True, editable=False)
    title = models.CharField(max_length=230)
    body = models.TextField(max_length=32100, default=None, blank=True, null=True)
    taggs = models.ManyToManyField(Tagg)

    class Meta:
        pass

    def __str__(self):
        return str(self.pk)

    def get_absolute_url(self):
        return reverse("blogapp_Post_detail", args=(self.pk,))

    def get_update_url(self):
        return reverse("blogapp_Post_update", args=(self.pk,))

# =================================================

class Nc2BfwTag(models.Model):
    title = models.CharField(max_length=45, blank=True, null=True)
    created_at = models.DateTimeField(blank=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'nc_2bfw__tag'
    def __str__(self):
        return  str(self.id) + " - " + self.title

class Nc2BfwNcM2MNc2BfwNoteNc2BfwTag(models.Model):
    nc_2bfw_tag_c = models.OneToOneField('Nc2BfwTag', models.DO_NOTHING, db_column='nc_2bfw__tag_c_id', primary_key=True)  # Field renamed because it contained more than one '_' in a row.
    nc_2bfw_note_p = models.ForeignKey('Nc2BfwNote', models.DO_NOTHING, db_column='nc_2bfw__note_p_id')  # Field renamed because it contained more than one '_' in a row.

    class Meta:
        managed = False
        db_table = 'nc_2bfw___nc_m2m_nc_2bfw__note_nc_2bfw__tag'
        unique_together = (('nc_2bfw_tag_c', 'nc_2bfw_note_p'),)

class Nc2BfwNote(models.Model):
    title = models.CharField(max_length=45, blank=True, null=True)
    tags = models.ManyToManyField(Nc2BfwTag, through="Nc2BfwNcM2MNc2BfwNoteNc2BfwTag")
    created_at = models.DateTimeField(blank=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)
    body = models.CharField(max_length=45, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'nc_2bfw__note'

# =================================================
