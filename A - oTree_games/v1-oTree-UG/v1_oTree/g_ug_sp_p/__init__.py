from otree.api import *


doc = """
Ultimatum Game where the Player takes the role of the Proposer
"""


class C(BaseConstants):
    NAME_IN_URL = 'g_ug_sp_p'
    PLAYERS_PER_GROUP = None
    NUM_ROUNDS = 1


class Subsession(BaseSubsession):
    pass


class Group(BaseGroup):
    pass


class Player(BasePlayer):
    prolificid = models.StringField(
        label = "Please copy your Prolific ID into this field", blank = False
    )
    offer = models.IntegerField(
        choices=[[0,"0"],[1,"1"],[2,"2"],[3,"3"],[4,"4"]],
        label = "Please indicate how much of the total bonus payment of 4£ you want to send to Player R:",
        min = 0, max = 4
    )


# PAGES
class intro(Page):
    pass

class prolificid(Page):
    form_model = 'player'
    form_fields = ['prolificid']

class offer(Page):
    form_model = 'player'
    form_fields = ['offer']

class end(Page):
    pass


page_sequence = [intro, prolificid, offer, end]
