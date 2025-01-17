/*
 * Copyright (C) 2016+ AzerothCore <www.azerothcore.org>, released under GNU GPL v2 license, you may redistribute it and/or modify it under version 2 of the License, or (at your option), any later version.
 */

#ifndef _PLAYERBOT_SUGGESTWHATTODOACTION_H
#define _PLAYERBOT_SUGGESTWHATTODOACTION_H

#include "InventoryAction.h"

class PlayerbotAI;

enum class ChatChannelId : uint32
{
    CHAT_GENERAL           = 1,
    CHAT_TRADE             = 2,
    CHAT_LOCAL_DEFENCE     = 22,
    CHAT_LOOKING_FOR_GROUP = 26,
};

enum class CapitalAreaId : uint32
{
    AREA_ORGRIMMAR      = 1637,
    AREA_STORMWIND_CITY = 1519,
    AREA_IRONFORGE      = 1537,
    AREA_THUNDER_BLUFF  = 1638,
    AREA_UNDERCITY      = 1497,
    AREA_DARNASSUS      = 1657
};

class SuggestWhatToDoAction : public InventoryAction
{
    public:
        SuggestWhatToDoAction(PlayerbotAI* botAI, std::string const name = "suggest what to do");

        bool Execute(Event event) override;
        bool isUseful() override;

    protected:
        typedef void (SuggestWhatToDoAction::*Suggestion)();
        std::vector<Suggestion> suggestions;
        void specificQuest();
        void grindReputation();
        void something();
        void pvp();
        void spam(
            std::string msg,
            ChatChannelId channelId = ChatChannelId::CHAT_GENERAL,
            bool const isLowerCase = false
        );

        std::vector<uint32> GetIncompletedQuests();

    private:
        static std::map<std::string, uint8> instances;
        static std::map<std::string, uint8> factions;
};

class SuggestTradeAction : public SuggestWhatToDoAction
{
    public:
        SuggestTradeAction(PlayerbotAI* botAI);

        bool Execute(Event event) override;
        bool isUseful() override { return true; }
};

#endif
