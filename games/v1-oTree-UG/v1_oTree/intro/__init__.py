from otree.api import *


doc = """
Introduction and Game Overview
"""


class C(BaseConstants):
    NAME_IN_URL = 'intro'
    PLAYERS_PER_GROUP = None
    NUM_ROUNDS = 1


class Subsession(BaseSubsession):
    pass

def creating_session(subsession: Subsession):
    for player in subsession.get_players():
        participant = player.participant
        participant.progress = 1


class Group(BaseGroup):
    pass


class Player(BasePlayer):

    prolificid = models.StringField(
        label = "Please copy your Prolific ID into this field", blank = False
    )


# PAGES
class intro(Page):

    @staticmethod
    def before_next_page(player: Player, timeout_happened):
        participant = player.participant
        participant.progress += 1

class prolificid(Page):
    form_model = 'player'
    form_fields = ['prolificid']

    @staticmethod
    def before_next_page(player: Player, timeout_happened):
        participant = player.participant
        participant.progress += 1

page_sequence = [intro, prolificid]
