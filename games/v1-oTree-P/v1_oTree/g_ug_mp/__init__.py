import random
from otree.api import *


doc = """
Single Player Strategy-Form Ultimatum Game with 2 Proposers and 1 Responder
"""


class C(BaseConstants):
    NAME_IN_URL = 'g_ug_mp'
    PLAYERS_PER_GROUP = None
    TASKS = [
    'Decision00',
    'Decision01',
    'Decision02',
    'Decision03',
    'Decision04',
    'Decision05',
    'Decision06',
    'Decision11',
    'Decision12',
    'Decision13',
    'Decision14',
    'Decision15',
    'Decision16',
    'Decision22',
    'Decision23',
    'Decision24',
    'Decision25',
    'Decision26',
    'Decision33',
    'Decision34',
    'Decision35',
    'Decision36',
    'Decision44',
    'Decision45',
    'Decision46',
    'Decision55',
    'Decision56',
    'Decision66'
    ]
    NUM_ROUNDS = len(TASKS)


class Subsession(BaseSubsession):
    pass

class Group(BaseGroup):
    pass


class Player(BasePlayer):

    choice00 = models.IntegerField(
        label = "Please indicate here if you would accept the Offer:",
        choices=[
            [0, 'Reject'],
            [1, 'Accept'],
        ]
    )
    choice01 = models.IntegerField(
        label = "Please indicate here if you would accept the Offer:",
        choices=[
            [0, 'Reject'],
            [1, 'Accept'],
        ]
    )
    choice02 = models.IntegerField(
        label = "Please indicate here if you would accept the Offer:",
        choices=[
            [0, 'Reject'],
            [1, 'Accept'],
        ]
    )
    choice03 = models.IntegerField(
        label = "Please indicate here if you would accept the Offer:",
        choices=[
            [0, 'Reject'],
            [1, 'Accept'],
        ]
    )
    choice04 = models.IntegerField(
        label = "Please indicate here if you would accept the Offer:",
        choices=[
            [0, 'Reject'],
            [1, 'Accept'],
        ]
    )
    choice05 = models.IntegerField(
        label = "Please indicate here if you would accept the Offer:",
        choices=[
            [0, 'Reject'],
            [1, 'Accept'],
        ]
    )
    choice06 = models.IntegerField(
        label = "Please indicate here if you would accept the Offer:",
        choices=[
            [0, 'Reject'],
            [1, 'Accept'],
        ]
    )
    choice11 = models.IntegerField(
        label = "Please indicate here if you would accept the Offer:",
        choices=[
            [0, 'Reject'],
            [1, 'Accept'],
        ]
    )
    choice12 = models.IntegerField(
        label = "Please indicate here if you would accept the Offer:",
        choices=[
            [0, 'Reject'],
            [1, 'Accept'],
        ]
    )
    choice13 = models.IntegerField(
        label = "Please indicate here if you would accept the Offer:",
        choices=[
            [0, 'Reject'],
            [1, 'Accept'],
        ]
    )
    choice14 = models.IntegerField(
        label = "Please indicate here if you would accept the Offer:",
        choices=[
            [0, 'Reject'],
            [1, 'Accept'],
        ]
    )
    choice15 = models.IntegerField(
        label = "Please indicate here if you would accept the Offer:",
        choices=[
            [0, 'Reject'],
            [1, 'Accept'],
        ]
    )
    choice16 = models.IntegerField(
        label = "Please indicate here if you would accept the Offer:",
        choices=[
            [0, 'Reject'],
            [1, 'Accept'],
        ]
    )
    choice22 = models.IntegerField(
        label = "Please indicate here if you would accept the Offer:",
        choices=[
            [0, 'Reject'],
            [1, 'Accept'],
        ]
    )
    choice23 = models.IntegerField(
        label = "Please indicate here if you would accept the Offer:",
        choices=[
            [0, 'Reject'],
            [1, 'Accept'],
        ]
    )
    choice24 = models.IntegerField(
        label = "Please indicate here if you would accept the Offer:",
        choices=[
            [0, 'Reject'],
            [1, 'Accept'],
        ]
    )
    choice25 = models.IntegerField(
        label = "Please indicate here if you would accept the Offer:",
        choices=[
            [0, 'Reject'],
            [1, 'Accept'],
        ]
    )
    choice26 = models.IntegerField(
        label = "Please indicate here if you would accept the Offer:",
        choices=[
            [0, 'Reject'],
            [1, 'Accept'],
        ]
    )
    choice33 = models.IntegerField(
        label = "Please indicate here if you would accept the Offer:",
        choices=[
            [0, 'Reject'],
            [1, 'Accept'],
        ]
    )
    choice34 = models.IntegerField(
        label = "Please indicate here if you would accept the Offer:",
        choices=[
            [0, 'Reject'],
            [1, 'Accept'],
        ]
    )
    choice35 = models.IntegerField(
        label = "Please indicate here if you would accept the Offer:",
        choices=[
            [0, 'Reject'],
            [1, 'Accept'],
        ]
    )
    choice36 = models.IntegerField(
        label = "Please indicate here if you would accept the Offer:",
        choices=[
            [0, 'Reject'],
            [1, 'Accept'],
        ]
    )
    choice44 = models.IntegerField(
        label = "Please indicate here if you would accept the Offer:",
        choices=[
            [0, 'Reject'],
            [1, 'Accept'],
        ]
    )
    choice45 = models.IntegerField(
        label = "Please indicate here if you would accept the Offer:",
        choices=[
            [0, 'Reject'],
            [1, 'Accept'],
        ]
    )
    choice46 = models.IntegerField(
        label = "Please indicate here if you would accept the Offer:",
        choices=[
            [0, 'Reject'],
            [1, 'Accept'],
        ]
    )
    choice55 = models.IntegerField(
        label = "Please indicate here if you would accept the Offer:",
        choices=[
            [0, 'Reject'],
            [1, 'Accept'],
        ]
    )
    choice56 = models.IntegerField(
        label = "Please indicate here if you would accept the Offer:",
        choices=[
            [0, 'Reject'],
            [1, 'Accept'],
        ]
    )
    choice66 = models.IntegerField(
        label = "Please indicate here if you would accept the Offer:",
        choices=[
            [0, 'Reject'],
            [1, 'Accept'],
        ]
    )
    attention_check_accept = models.IntegerField(
        label = "This is an attention check. Please select 'Accept':",
        choices=[
            [0, 'Reject'],
            [1, 'Accept'],
        ]
    )
    attention_check_reject = models.IntegerField(
        label = "This is an attention check. Please select 'Reject':",
        choices=[
            [0, 'Reject'],
            [1, 'Accept'],
        ]
    )

# FUNCTIONS
def creating_session(subsession: Subsession):
    if subsession.round_number == 1:
        for p in subsession.get_players():
            round_numbers = list(range(1, C.NUM_ROUNDS + 1))
            random.shuffle(round_numbers)
            task_rounds_mp = dict(zip(C.TASKS, round_numbers))
            # print('player', p.id_in_subsession)
            # print('task_rounds_mp is', task_rounds_mp)
            p.participant.task_rounds_mp = task_rounds_mp


# PAGES

class Decision00(Page):
    form_model = 'player'
    form_fields = ['choice00']

    @staticmethod
    def is_displayed(player: Player):
        participant = player.participant

        return player.round_number == participant.task_rounds_mp['Decision00']

    @staticmethod
    def before_next_page(player: Player, timeout_happened):
        participant = player.participant
        participant.progress += 1

class Decision01(Page):
    form_model = 'player'
    form_fields = ['choice01']

    @staticmethod
    def is_displayed(player: Player):
        participant = player.participant

        return player.round_number == participant.task_rounds_mp['Decision01']

    @staticmethod
    def before_next_page(player: Player, timeout_happened):
        participant = player.participant
        participant.progress += 1

class Decision02(Page):
    form_model = 'player'
    form_fields = ['choice02']

    @staticmethod
    def is_displayed(player: Player):
        participant = player.participant

        return player.round_number == participant.task_rounds_mp['Decision02']

    @staticmethod
    def before_next_page(player: Player, timeout_happened):
        participant = player.participant
        participant.progress += 1

class Decision03(Page):
    form_model = 'player'
    form_fields = ['choice03']

    @staticmethod
    def is_displayed(player: Player):
        participant = player.participant

        return player.round_number == participant.task_rounds_mp['Decision03']

    @staticmethod
    def before_next_page(player: Player, timeout_happened):
        participant = player.participant
        participant.progress += 1

class Decision04(Page):
    form_model = 'player'
    form_fields = ['choice04']

    @staticmethod
    def is_displayed(player: Player):
        participant = player.participant

        return player.round_number == participant.task_rounds_mp['Decision04']

    @staticmethod
    def before_next_page(player: Player, timeout_happened):
        participant = player.participant
        participant.progress += 1

class Decision05(Page):
    form_model = 'player'
    form_fields = ['choice05']

    @staticmethod
    def is_displayed(player: Player):
        participant = player.participant

        return player.round_number == participant.task_rounds_mp['Decision05']

    @staticmethod
    def before_next_page(player: Player, timeout_happened):
        participant = player.participant
        participant.progress += 1

class Decision06(Page):
    form_model = 'player'
    form_fields = ['choice06']

    @staticmethod
    def is_displayed(player: Player):
        participant = player.participant

        return player.round_number == participant.task_rounds_mp['Decision06']

    @staticmethod
    def before_next_page(player: Player, timeout_happened):
        participant = player.participant
        participant.progress += 1

class Decision11(Page):
    form_model = 'player'
    form_fields = ['choice11']

    @staticmethod
    def is_displayed(player: Player):
        participant = player.participant

        return player.round_number == participant.task_rounds_mp['Decision11']

    @staticmethod
    def before_next_page(player: Player, timeout_happened):
        participant = player.participant
        participant.progress += 1

class Decision12(Page):
    form_model = 'player'
    form_fields = ['choice12']

    @staticmethod
    def is_displayed(player: Player):
        participant = player.participant

        return player.round_number == participant.task_rounds_mp['Decision12']

    @staticmethod
    def before_next_page(player: Player, timeout_happened):
        participant = player.participant
        participant.progress += 1

class Decision13(Page):
    form_model = 'player'
    form_fields = ['choice13']

    @staticmethod
    def is_displayed(player: Player):
        participant = player.participant

        return player.round_number == participant.task_rounds_mp['Decision13']

    @staticmethod
    def before_next_page(player: Player, timeout_happened):
        participant = player.participant
        participant.progress += 1

class Decision14(Page):
    form_model = 'player'
    form_fields = ['choice14']

    @staticmethod
    def is_displayed(player: Player):
        participant = player.participant

        return player.round_number == participant.task_rounds_mp['Decision14']

    @staticmethod
    def before_next_page(player: Player, timeout_happened):
        participant = player.participant
        participant.progress += 1

class Decision15(Page):
    form_model = 'player'
    form_fields = ['choice15']

    @staticmethod
    def is_displayed(player: Player):
        participant = player.participant

        return player.round_number == participant.task_rounds_mp['Decision15']

    @staticmethod
    def before_next_page(player: Player, timeout_happened):
        participant = player.participant
        participant.progress += 1

class Decision16(Page):
    form_model = 'player'
    form_fields = ['choice16']

    @staticmethod
    def is_displayed(player: Player):
        participant = player.participant

        return player.round_number == participant.task_rounds_mp['Decision16']

    @staticmethod
    def before_next_page(player: Player, timeout_happened):
        participant = player.participant
        participant.progress += 1

class Decision22(Page):
    form_model = 'player'
    form_fields = ['choice22']

    @staticmethod
    def is_displayed(player: Player):
        participant = player.participant

        return player.round_number == participant.task_rounds_mp['Decision22']

    @staticmethod
    def before_next_page(player: Player, timeout_happened):
        participant = player.participant
        participant.progress += 1

class Decision23(Page):
    form_model = 'player'
    form_fields = ['choice23']

    @staticmethod
    def is_displayed(player: Player):
        participant = player.participant

        return player.round_number == participant.task_rounds_mp['Decision23']

    @staticmethod
    def before_next_page(player: Player, timeout_happened):
        participant = player.participant
        participant.progress += 1

class Decision24(Page):
    form_model = 'player'
    form_fields = ['choice24']

    @staticmethod
    def is_displayed(player: Player):
        participant = player.participant

        return player.round_number == participant.task_rounds_mp['Decision24']

    @staticmethod
    def before_next_page(player: Player, timeout_happened):
        participant = player.participant
        participant.progress += 1

class Decision25(Page):
    form_model = 'player'
    form_fields = ['choice25']

    @staticmethod
    def is_displayed(player: Player):
        participant = player.participant

        return player.round_number == participant.task_rounds_mp['Decision25']

    @staticmethod
    def before_next_page(player: Player, timeout_happened):
        participant = player.participant
        participant.progress += 1

class Decision26(Page):
    form_model = 'player'
    form_fields = ['choice26']

    @staticmethod
    def is_displayed(player: Player):
        participant = player.participant

        return player.round_number == participant.task_rounds_mp['Decision26']

    @staticmethod
    def before_next_page(player: Player, timeout_happened):
        participant = player.participant
        participant.progress += 1

class Decision33(Page):
    form_model = 'player'
    form_fields = ['choice33']

    @staticmethod
    def is_displayed(player: Player):
        participant = player.participant

        return player.round_number == participant.task_rounds_mp['Decision33']

    @staticmethod
    def before_next_page(player: Player, timeout_happened):
        participant = player.participant
        participant.progress += 1

class Decision34(Page):
    form_model = 'player'
    form_fields = ['choice34']

    @staticmethod
    def is_displayed(player: Player):
        participant = player.participant

        return player.round_number == participant.task_rounds_mp['Decision34']

    @staticmethod
    def before_next_page(player: Player, timeout_happened):
        participant = player.participant
        participant.progress += 1

class Decision35(Page):
    form_model = 'player'
    form_fields = ['choice35']

    @staticmethod
    def is_displayed(player: Player):
        participant = player.participant

        return player.round_number == participant.task_rounds_mp['Decision35']

    @staticmethod
    def before_next_page(player: Player, timeout_happened):
        participant = player.participant
        participant.progress += 1

class Decision36(Page):
    form_model = 'player'
    form_fields = ['choice36']

    @staticmethod
    def is_displayed(player: Player):
        participant = player.participant

        return player.round_number == participant.task_rounds_mp['Decision36']

    @staticmethod
    def before_next_page(player: Player, timeout_happened):
        participant = player.participant
        participant.progress += 1

class Decision44(Page):
    form_model = 'player'
    form_fields = ['choice44']

    @staticmethod
    def is_displayed(player: Player):
        participant = player.participant

        return player.round_number == participant.task_rounds_mp['Decision44']

    @staticmethod
    def before_next_page(player: Player, timeout_happened):
        participant = player.participant
        participant.progress += 1

class Decision45(Page):
    form_model = 'player'
    form_fields = ['choice45']

    @staticmethod
    def is_displayed(player: Player):
        participant = player.participant

        return player.round_number == participant.task_rounds_mp['Decision45']

    @staticmethod
    def before_next_page(player: Player, timeout_happened):
        participant = player.participant
        participant.progress += 1

class Decision46(Page):
    form_model = 'player'
    form_fields = ['choice46']

    @staticmethod
    def is_displayed(player: Player):
        participant = player.participant

        return player.round_number == participant.task_rounds_mp['Decision46']

    @staticmethod
    def before_next_page(player: Player, timeout_happened):
        participant = player.participant
        participant.progress += 1

class Decision55(Page):
    form_model = 'player'
    form_fields = ['choice55']

    @staticmethod
    def is_displayed(player: Player):
        participant = player.participant

        return player.round_number == participant.task_rounds_mp['Decision55']

    @staticmethod
    def before_next_page(player: Player, timeout_happened):
        participant = player.participant
        participant.progress += 1

class Decision56(Page):
    form_model = 'player'
    form_fields = ['choice56']

    @staticmethod
    def is_displayed(player: Player):
        participant = player.participant

        return player.round_number == participant.task_rounds_mp['Decision56']

    @staticmethod
    def before_next_page(player: Player, timeout_happened):
        participant = player.participant
        participant.progress += 1

class Decision66(Page):
    form_model = 'player'
    form_fields = ['choice66']

    @staticmethod
    def is_displayed(player: Player):
        participant = player.participant

        return player.round_number == participant.task_rounds_mp['Decision66']

    @staticmethod
    def before_next_page(player: Player, timeout_happened):
        participant = player.participant
        participant.progress += 1

class attention_check_accept(Page):
    form_model = 'player'
    form_fields = ['attention_check_accept']

    @staticmethod
    def is_displayed(player: Player):
        participant = player.participant

        return player.round_number == participant.task_rounds_mp['attention_check_accept']

class attention_check_reject(Page):
    form_model = 'player'
    form_fields = ['attention_check_reject']

    @staticmethod
    def is_displayed(player: Player):
        participant = player.participant

        return player.round_number == participant.task_rounds_mp['attention_check_reject']

class Results(Page):
    pass

page_sequence = [
    Decision00,
    Decision01,
    Decision02,
    Decision03,
    Decision04,
    Decision05,
    Decision06,
    Decision11,
    Decision12,
    Decision13,
    Decision14,
    Decision15,
    Decision16,
    Decision22,
    Decision23,
    Decision24,
    Decision25,
    Decision26,
    Decision33,
    Decision34,
    Decision35,
    Decision36,
    Decision44,
    Decision45,
    Decision46,
    Decision55,
    Decision56,
    Decision66
]


# TO-DO: Shuffle Page-Sequence per player in subsession
