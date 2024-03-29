from otree.api import *


doc = """
asking participants for their contact information if they want to be eligible for the real prize
"""


class C(BaseConstants):
    NAME_IN_URL = 'contact'
    PLAYERS_PER_GROUP = None
    NUM_ROUNDS = 1


class Subsession(BaseSubsession):
    pass


class Group(BaseGroup):
    pass


class Player(BasePlayer):
    email = models.StringField(
        label="Please enter your email address (optional):",
        blank=True,
        null=True,
    )
    usage = models.BooleanField(
        label="Please indicate if you have read, understood and answered the questions carefully:"
    )
    feedback = models.LongStringField(
        label="Please use this field to leave feedback if you have any:", blank = True
    )

# PAGES

class usage(Page):
    form_model = 'player'
    form_fields = ['usage', 'feedback']

    @staticmethod
    def before_next_page(player: Player, timeout_happened):
        participant = player.participant
        participant.progress += 1

class eligiblesp(Page):
    @staticmethod
    def is_displayed(player):
        return player.id_in_group == 75

class eligiblemp(Page):
    @staticmethod
    def is_displayed(player):
        return player.id_in_group == 31

class noteligible(Page):
    @staticmethod
    def is_displayed(player):
        return player.id_in_group not in [31, 75]

class end(Page):
    pass

page_sequence = [usage, eligiblesp, eligiblemp, noteligible, end]
