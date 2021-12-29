from django.contrib import admin

# Register your models here.

from django import forms

from . import models

# =================================================

# for one to many..
# class ApplicationInline(admin.TabularInline):
#     model = models.Application
#     readonly_fields = ('id',)
#     fields = ('id', "source", "application", "pts_topology", )

# for many to many..
# class ApplicationInline(admin.TabularInline):
    # model = models.Application.vehicles.through
    # readonly_fields = ('id',)
    # fields = ('id', "source", "application", "pts_topology", )
    
class Load_SpectrumAdminForm(forms.ModelForm):
    class Meta:
        model = models.Material
        fields = "__all__"

class Load_SpectrumAdmin(admin.ModelAdmin):
    form = Load_SpectrumAdminForm
    list_display = list_display_links = [
        "id",
        "time_bin_hours_1",
        "speed_bin_1",
        "torque_bin_1",
        "time_bin_hours_2",
        "speed_bin_2",
        "torque_bin_2",
        "time_bin_hours_3",
        "speed_bin_3",
        "torque_bin_3",
        # "time_bin_hours_4",
        # "speed_bin_4",
        # "torque_bin_4",
        # "time_bin_hours_5",
        # "speed_bin_5",
        # "torque_bin_5",
    ]   
    search_fields = [
        "time_bin_hours_1",
        "speed_bin_1",
        "torque_bin_1",
    ]


class MaterialAdminForm(forms.ModelForm):
    class Meta:
        model = models.Material
        fields = "__all__"

class MaterialAdmin(admin.ModelAdmin):
    form = MaterialAdminForm
    list_display = list_display_links = [
        "id",
        "lable",
        "treatment_type",
        "material_type",
        "surface_hardness",
        "surface_hardness_unit",
        "core_hardness",
        "core_hardness_unit",
        "hardness_depth_mm",
        # "tensile_strength_N_per_mm2",
        # "yield_point_N_per_mm2",
        # "youngs_modulus_N_per_mm2",
        # "poissons_ratio",
        # "density_kg_per_m3",
        # "coefficient_of_therma_expansion_10e_6_per_c",
        # "specific_heat_capacity_J_per_kg_k",
        # "specific_heat_conductivity_W_per_m_K",
        # "endurance_limit_root_N_per_mm2",
        # "endurance_limit_flank_N_per_mm3",
        # "quality_iso_6336_5",
    ]
    autocomplete_fields  = [
        "load_spectrums"
    ]
    search_fields = [
        "lable",
        "treatment_type",
        "material_type",
    ]
    
class GearAdminForm(forms.ModelForm):
    class Meta:
        model = models.Gear
        fields = "__all__"

class GearAdmin(admin.ModelAdmin):
    form = GearAdminForm
    list_display = list_display_links = [
        "id",
        "source",
        "gear_identification",
        "data_approximated",
        "gear_quality",
        "gear_supplier",
        "number_of_teeth",
        "gear_type",
        "material_id",
        "normal_pressure_angle_deg",
        # "gear_pitch_dia_mm",
        # "face_width_mm",
        # "gear_tip_dia_mm",
        # "root_diameter",
        # "assembled_to",
        # "assembled_type",
        # "tooth_thickness_tolerance",
        # "tangential_force_n",
        # "contact_stress_mpa",
        # "root_stress_mpa",
        # "transverse_contact_ratio",
        # "total_contact_ratio",
        # "profile_crowning",
        # "lead_crowning",
        # "profile_angle_deviation_microm",
        # "helix_slope_deviation_microm",
        # "cumulative_pitch_error_microm",
        # "total_composite_action_tolerance_microm",
        # "profile_form_deviation_microm",
        # "helix_slope_deviation_microm",
        # "powder_metal",
        # "soft_machining",
        # "heat_treatment",
        # "sizing",
        # "densification",
        # "hard_finishing",
        "created_at",
        "updated_at",
    ]
    autocomplete_fields  = [
        "materials"
    ]
    search_fields = [
        "source",
        "gear_identification",
    ]

class StageAdminForm(forms.ModelForm):
    class Meta:
        model = models.Stage
        fields = "__all__"

class StageAdmin(admin.ModelAdmin):
    form = StageAdminForm
    list_display = list_display_links = [
        "id",
        "stage_identification",
        "source",
        "topology",
        "created_at",
        "updated_at",
    ]
    autocomplete_fields  = [
        "gears"
    ]
    search_fields = [
        "stage_identification",
        "source",
        "topology",
    ]

class ApplicationAdminForm(forms.ModelForm):
    class Meta:
        model = models.Application
        fields = "__all__"

class ApplicationAdmin(admin.ModelAdmin):
    readonly_fields = ('id',)
    form = ApplicationAdminForm
    list_display = list_display_links = [
        "id",
        "source",
        "application",
        "pts_topology",
        "num_speeds",
        "pts_supplier",
        # "total_gear_ratio",
        # "total_center_distance_mm",
        # "differential_type",
        # "pts_mass_kg",
        # "pts_length_mm",
        # "pts_width_mm",
        # "pts_height_mm",
        # "pts_power_density_kw_per_kg",
        # "pts_specific_power_kw_per_mm3",
        # "kisssys_kisssoft_model_link",
        # "load_spectrum_id",
        # "lubrication",
        "created_at",
        "updated_at",
        "sort_order",
        "active_status",
    ]
    autocomplete_fields  = [
        "stages"
    ]
    search_fields = [
        "source",
        "application",
        "pts_topology",
    ]

class VehicleAdminForm(forms.ModelForm):
    class Meta:
        model = models.Vehicle
        fields = "__all__"

class VehicleAdmin(admin.ModelAdmin):
    form = VehicleAdminForm
    list_display = list_display_links = [
        "id",
        "vehicle_maker",
        "vehicle_model",
        "vehicle_class_si_vehicle_segment",
        # "maximum_speed_kph",
        # "number_of_electric_motors",
        # "max_motor_torque_nm",
        # "max_motor_speed_rpm",
        # "source",
        "created_at",
        "updated_at",
        # "sort_order",
        # "active_status",
    ]
    # inlines = [
        # ApplicationInline,
    # ]
    autocomplete_fields  = [
        "applications"
    ]
    
admin.site.register(models.Load_Spectrum, Load_SpectrumAdmin)
admin.site.register(models.Material, MaterialAdmin)
admin.site.register(models.Gear, GearAdmin)
admin.site.register(models.Stage, StageAdmin)
admin.site.register(models.Application, ApplicationAdmin)
admin.site.register(models.Vehicle, VehicleAdmin)


# =================================================

# example..

