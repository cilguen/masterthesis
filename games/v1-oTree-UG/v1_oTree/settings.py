from os import environ


SESSION_CONFIGS = [
    dict(
         name='intro',
         app_sequence=['intro'],
         num_demo_participants=1,
     ),
    dict(
         name='ac_ug_sp',
         app_sequence=['ac_ug_sp'],
         num_demo_participants=1,
     ),
    dict(
         name='g_ug_sp',
         app_sequence=['g_ug_sp'],
         num_demo_participants=1,
     ),
    dict(
         name='ac_ug_mp',
         app_sequence=['ac_ug_mp'],
         num_demo_participants=1,
     ),
    dict(
         name='g_ug_mp',
         app_sequence=['g_ug_mp'],
         num_demo_participants=1,
     ),
    dict(
         name='g_svo',
         app_sequence=['g_svo'],
         num_demo_participants=1,
     ),
    dict(
         name='contact',
         app_sequence=['contact'],
         num_demo_participants=1,
     ),
    dict(
         name='all_apps',
         app_sequence=['intro', 'g_svo', 'ac_ug_sp', 'g_ug_sp', 'ac_ug_mp', 'g_ug_mp', 'contact'],
         num_demo_participants=1,
     ),
    dict(
         name='g_ug_sp_p',
         app_sequence=['g_ug_sp_p'],
         num_demo_participants=1,
     ),
    dict(
         name='g_ug_mp_p',
         app_sequence=['g_ug_mp_p'],
         num_demo_participants=1,
    ),

]

# if you set a property in SESSION_CONFIG_DEFAULTS, it will be inherited by all configs
# in SESSION_CONFIGS, except those that explicitly override it.
# the session config can be accessed from methods in your apps as self.session.config,
# e.g. self.session.config['participation_fee']

SESSION_CONFIG_DEFAULTS = dict(
    real_world_currency_per_point=1.00, participation_fee=0.00, doc=""
)

PARTICIPANT_FIELDS = ['task_rounds_mp', 'task_rounds_sp', 'svo_angle', 'svo_category', 'progress']
SESSION_FIELDS = []

# ISO-639 code
# for example: de, fr, ja, ko, zh-hans
LANGUAGE_CODE = 'en'

# e.g. EUR, GBP, CNY, JPY
REAL_WORLD_CURRENCY_CODE = 'USD'
USE_POINTS = True

ADMIN_USERNAME = 'admin'
# for security, best to set admin password in an environment variable
ADMIN_PASSWORD = environ.get('OTREE_ADMIN_PASSWORD')

DEMO_PAGE_INTRO_HTML = """ """

SECRET_KEY = '1441267951966'
