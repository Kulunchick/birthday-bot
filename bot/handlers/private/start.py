from aiogram import Bot
from aiogram.types import InlineKeyboardButton, InlineKeyboardMarkup, Message
from fluentogram import TranslatorRunner


async def start_chat(message: Message, bot: Bot, i18n: TranslatorRunner):
    await message.answer(
        i18n.private.start(fullname=message.from_user.full_name),
        reply_markup=InlineKeyboardMarkup(inline_keyboard=[[
            InlineKeyboardButton(
                text=i18n.buttons.invite.bot(),
                url=f"t.me/{(await bot.me()).username}?startgroup=1",
            )
        ]]),
    )
