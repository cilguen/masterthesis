import random
from otree.api import *


doc = """
Single Player Strategy-Form Ultimatum Game with 1 Proposer and 1 Responder
"""


class C(BaseConstants):
    NAME_IN_URL = 'g_ug_sp'
    PLAYERS_PER_GROUP = None
    TASKS = [
    'Decision0',
    'Decision1',
    'Decision2',
    'Decision3',
    'Decision4',
    'Decision5',
    'Decision6'
    ]
    NUM_ROUNDS = len(TASKS)


class Subsession(BaseSubsession):
    pass


class Group(BaseGroup):
    pass


class Player(BasePlayer):
    choice0 = models.IntegerField(
        label = "Please indicate here if you would accept the Offer:",
        choices=[
            [0, 'Reject'],
            [1, 'Accept'],
        ]
    )
    choice1 = models.IntegerField(
        label = "Please indicate here if you would accept the Offer:",
        choices=[
            [0, 'Reject'],
            [1, 'Accept'],
        ]
    )
    choice2 = models.IntegerField(
        label = "Please indicate here if you would accept the Offer:",
        choices=[
            [0, 'Reject'],
            [1, 'Accept'],
        ]
    )
    choice3 = models.IntegerField(
        label = "Please indicate here if you would accept the Offer:",
        choices=[
            [0, 'Reject'],
            [1, 'Accept'],
        ]
    )
    choice4 = models.IntegerField(
        label = "Please indicate here if you would accept the Offer:",
        choices=[
            [0, 'Reject'],
            [1, 'Accept'],
        ]
    )
    choice5 = models.IntegerField(
        label = "Please indicate here if you would accept the Offer:",
        choices=[
            [0, 'Reject'],
            [1, 'Accept'],
        ]
    )
    choice6 = models.IntegerField(
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
            task_rounds_sp = dict(zip(C.TASKS, round_numbers))
            # print('player', p.id_in_subsession)
            # print('task_rounds_sp is', task_rounds_sp)
            p.participant.task_rounds_sp = task_rounds_sp


# PAGES
class Decision0(Page):
    form_model = 'player'
    form_fields = ['choice0']

    @staticmethod
    def is_displayed(player: Player):
        participant = player.participant

        return player.round_number == participant.task_rounds_sp['Decision0']

    @staticmethod
    def before_next_page(player: Player, timeout_happened):
        participant = player.participant
        participant.progress += 1

class Decision1(Page):
    form_model = 'player'
    form_fields = ['choice1']

    @staticmethod
    def is_displayed(player: Player):
        participant = player.participant

        return player.round_number == participant.task_rounds_sp['Decision1']

    @staticmethod
    def before_next_page(player: Player, timeout_happened):
        participant = player.participant
        participant.progress += 1

class Decision2(Page):
    form_model = 'player'
    form_fields = ['choice2']

    @staticmethod
    def is_displayed(player: Player):
        participant = player.participant

        return player.round_number == participant.task_rounds_sp['Decision2']

    @staticmethod
    def before_next_page(player: Player, timeout_happened):
        participant = player.participant
        participant.progress += 1

class Decision3(Page):
    form_model = 'player'
    form_fields = ['choice3']

    @staticmethod
    def is_displayed(player: Player):
        participant = player.participant

        return player.round_number == participant.task_rounds_sp['Decision3']

    @staticmethod
    def before_next_page(player: Player, timeout_happened):
        participant = player.participant
        participant.progress += 1

class Decision4(Page):
    form_model = 'player'
    form_fields = ['choice4']

    @staticmethod
    def is_displayed(player: Player):
        participant = player.participant

        return player.round_number == participant.task_rounds_sp['Decision4']

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

        return player.round_number == participant.task_rounds_sp['attention_check_accept']

class attention_check_reject(Page):
    form_model = 'player'
    form_fields = ['attention_check_reject']

    @staticmethod
    def is_displayed(player: Player):
        participant = player.participant

        return player.round_number == participant.task_rounds_sp['attention_check_reject']

class Results(Page):
    pass


page_sequence = [
    Decision0,
    Decision1,
    Decision2,
    Decision3,
    Decision4]
