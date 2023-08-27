from aiogram import Bot
from aiogram.types import Message
from fluentogram import TranslatorRunner

from bot.keyboards.register import register_keyboard
from bot.models import Group
from bot.repositories.group import GroupFilter
from bot.repositories.uow import UnitOfWork


async def start_group(message: Message, uow: UnitOfWork, bot: Bot, i18n: TranslatorRunner):
    if not await uow.groups.check_exists(GroupFilter(chat_id=message.chat.id)):
        group = Group(chat_id=message.chat.id, title=message.chat.title)
        await uow.groups.create(group)

    await message.answer(
        i18n.group.start(),
        reply_markup=await register_keyboard(bot, message.chat.id),
    )
