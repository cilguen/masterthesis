from random import shuffle
from otree.api import *


doc = """
Single Player Strategy-Form Ultimatum Game with 1 Proposer and 1 Responder
"""


class C(BaseConstants):
    NAME_IN_URL = 'ac_ug_sp'
    PLAYERS_PER_GROUP = None
    NUM_ROUNDS = 1


class Subsession(BaseSubsession):
    pass


class Group(BaseGroup):
    pass


class Player(BasePlayer):
    responder_payoff = models.IntegerField(
        label = "Please indicate how much you would earn if you were to accept the Offer:",
        min = 0, max = 6
    )
    proposer_payoff = models.IntegerField(
        label = "Please indicate how much Player P would earn if you were to accept the Offer:",
        min = 0, max = 6
    )



# PAGES
class Instructions(Page):
    pass

class Introduction(Page):
    @staticmethod
    def before_next_page(player: Player, timeout_happened):
        participant = player.participant
        # remember to add 'progress' to PARTICIPANT_FIELDS.
        participant.progress += 1

class testchart(Page):
    form_model = 'player'
    form_fields = ['responder_payoff', 'proposer_payoff']

    @staticmethod
    def before_next_page(player: Player, timeout_happened):
        participant = player.participant
        # remember to add 'progress' to PARTICIPANT_FIELDS.
        participant.progress += 1

class Results(Page):
    pass


page_sequence = [
    Introduction,
    testchart,
    Results
    ]
