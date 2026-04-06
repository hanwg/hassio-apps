# Changelog

This changelog is based on release notes at: https://core.telegram.org/bots/api.

## 9.6

Managed Bots

- Added the field can_manage_bots to the class User.
- Added the class KeyboardButtonRequestManagedBot and the field request_managed_bot to the class KeyboardButton.
- Added the class ManagedBotCreated and the field managed_bot_created to the class Message.
- Added updates about the creation of managed bots and the change of their token, represented by the class ManagedBotUpdated and the field managed_bot in the class Update.
- Added the methods getManagedBotToken and replaceManagedBotToken.
- Added the class PreparedKeyboardButton and the method savePreparedKeyboardButton, allowing bots to request users, chats and managed bots from Mini Apps.
- Added the method requestChat to the class WebApp.
- Added support for https://t.me/newbot/{manager_bot_username}/{suggested_bot_username}[?name={suggested_bot_name}] links, allowing bots to request the creation of a managed bot via a link.

Polls

- Added support for quizzes with multiple correct answers.
- Replaced the field correct_option_id with the field correct_option_ids in the class Poll.
- Replaced the parameter correct_option_id with the parameter correct_option_ids in the method sendPoll.
- Allowed to pass allows_multiple_answers for quizzes in the method sendPoll.
- Increased the maximum time for automatic poll closure to 2628000 seconds.
- Added the field allows_revoting to the class Poll.
- Added the parameter allows_revoting to the method sendPoll.
- Added the parameter shuffle_options to the method sendPoll.
- Added the parameter allow_adding_options to the method sendPoll.
- Added the parameter hide_results_until_closes to the method sendPoll.
- Added the fields description and description_entities to the class Poll.
- Added the parameters description, description_parse_mode, and description_entities to the method sendPoll.
- Added the field persistent_id to the class PollOption, representing a persistent identifier for the option.
- Added the field option_persistent_ids to the class PollAnswer.
- Added the fields added_by_user and added_by_chat to the class PollOption, denoting the user and the chat which added the option.
- Added the field addition_date to the class PollOption, describing the date when the option was added.
- Added the class PollOptionAdded and the field poll_option_added to the class Message.
- Added the class PollOptionDeleted and the field poll_option_deleted to the class Message.
- Added the field poll_option_id to the class ReplyParameters, allowing bots to reply to a specific poll option.
- Added the field reply_to_poll_option_id to the class Message.
- Allowed “date_time” entities in checklist title, checklist task text, TextQuote, ReplyParameters quote, sendGift, and giftPremiumSubscription.

## 9.5

- Added the MessageEntity type “date_time”, allowing bots to show a formatted date and time to the user.
- Allowed all bots to use the method sendMessageDraft.
- Added the field tag to the classes ChatMemberMember and ChatMemberRestricted.
- Added the method setChatMemberTag.
- Added the field can_edit_tag to the classes ChatMemberRestricted and ChatPermissions.
- Added the field can_manage_tags to the classes ChatMemberAdministrator and ChatAdministratorRights.
- Added the parameter can_manage_tags to the method promoteChatMember.
- Added the field sender_tag to the class Message.
- Added the field iconCustomEmojiId to the class BottomButton.

## 9.4

- Allowed bots to use custom emoji in messages directly sent by the bot to private, group and supergroup chats if the owner of the bot has a Telegram Premium subscription.
- Allowed bots to create topics in private chats using the method createForumTopic.
- Allowed bots to prevent users from creating and deleting topics in private chats through a new setting in the @BotFather Mini App.
- Added the field allows_users_to_create_topics to the class User.
- Added the field icon_custom_emoji_id to the classes KeyboardButton and InlineKeyboardButton, allowing bots to show a custom emoji on buttons if they are able to use custom emoji in the message.
- **Added the field style to the classes KeyboardButton and InlineKeyboardButton, allowing bots to change the color of buttons.**
- Added the class ChatOwnerLeft and the field chat_owner_left to the class Message.
- Added the class ChatOwnerChanged and the field chat_owner_changed to the class Message.
- Added the methods setMyProfilePhoto and removeMyProfilePhoto, allowing bots to manage their profile picture.
- Added the class VideoQuality and the field qualities to the class Video allowing bots to get information about other available qualities of a video.
- Added the field first_profile_audio to the class ChatFullInfo.
- Added the class UserProfileAudios and the method getUserProfileAudios, allowing bots to fetch a list of audios added to the profile of a user.
- Added the field rarity to the class UniqueGiftModel.
- Added the field is_burned to the class UniqueGift.

## 9.3

Topics in private chats

- Added the field has_topics_enabled to the class User, which can be used to determine whether forum topic mode is enabled for the bot in private chats.
- **Added the method sendMessageDraft, allowing partial messages to be streamed to a user while being generated.**
- Supported the fields message_thread_id and is_topic_message in the class Message for messages in private chats with forum topic mode enabled.
- Supported the parameter message_thread_id in private chats with topics in the methods sendMessage, sendPhoto, sendVideo, sendAnimation, sendAudio, sendDocument, sendPaidMedia, sendSticker, sendVideoNote, sendVoice, sendLocation, sendVenue, sendContact, sendPoll, sendDice, sendInvoice, sendGame, sendMediaGroup, copyMessage, copyMessages, forwardMessage, and forwardMessages, allowing bots to send a message to a specific topic.
- Supported the parameter message_thread_id in private chats in the method sendChatAction, allowing bots to send chat actions to a specific topic in private chats.
- Supported the parameter message_thread_id in private chats with topics in the method editForumTopic, deleteForumTopic, and unpinAllForumTopicMessages, allowing bots to manage topics in private chats.
- Added the field is_name_implicit to the classes ForumTopic and ForumTopicCreated.

Gifts

- Added the methods getUserGifts and getChatGifts.
- Replaced the field last_resale_star_count with the fields last_resale_currency and last_resale_amount in the class UniqueGiftInfo.
- Replaced the parameter exclude_limited with the parameters exclude_limited_upgradable and exclude_limited_non_upgradable in the method getBusinessAccountGifts.
- Added the value “gifted_upgrade” as a possible value of UniqueGiftInfo.origin for messages about the upgrade of a gift that was purchased after it was sent.
- Added the value “offer” as a possible value of UniqueGiftInfo.origin for messages about the purchase of a gift through a purchase offer.
- Added the field gift_upgrade_sent to the class Message.
- Added the field gift_id to the class UniqueGift.
- Added the field is_from_blockchain to the class UniqueGift.
- Added the parameter exclude_from_blockchain in the method getBusinessAccountGifts, to filter out gifts that were assigned from the TON blockchain.
- Added the fields personal_total_count and personal_remaining_count to the class Gift.
- Added the field is_premium to the classes Gift and UniqueGift.
- Added the field is_upgrade_separate to the classes GiftInfo and OwnedGiftRegular.
- Added the class UniqueGiftColors that describes the color scheme for a user's name, replies to messages and link previews based on a unique gift.
- Added the field has_colors to the class Gift.
- Added the field colors to the class UniqueGift.
- Added the class GiftBackground and the field background to the class Gift.
- Added the field unique_gift_variant_count to the class Gift.
- Added the field unique_gift_number to the classes GiftInfo and OwnedGiftRegular.
- Added the field gifts_from_channels to the class AcceptedGiftTypes.

Miscellaneous

- Allowed bots to disable their main username if they have additional active usernames purchased on Fragment.
- Allowed bots to disable the right can_restrict_members in channel chats.
- Added the method repostStory, allowing bots to repost stories across different business accounts they manage.
- Added the class UserRating and the field rating to the class ChatFullInfo.
- Increased the maximum price for paid media to 25000 Telegram Stars.
- Added the field paid_message_star_count to the class ChatFullInfo.
- Added the parameter message_effect_id to the methods forwardMessage and copyMessage.
- Added the field unique_gift_colors to the class ChatFullInfo.
- Added the field completed_by_chat to the class ChecklistTask.
