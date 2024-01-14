from random import shuffle
from otree.api import *


doc = """
Single Player Strategy-Form Ultimatum Game with 1 Proposer and 1 Responder
"""


class C(BaseConstants):
    NAME_IN_URL = 'ac_ug_mp'
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
    proposer1_payoff = models.IntegerField(
        label = "Please indicate how much Player P1 would earn if you were to accept the Offer:",
        min = 0, max = 6
    )
    proposer2_payoff = models.IntegerField(
        label = "Please indicate how much Player P2 would earn if you were to accept the Offer:",
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
    form_fields = ['responder_payoff', 'proposer1_payoff', 'proposer2_payoff']

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
