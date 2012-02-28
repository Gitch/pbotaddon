
SLASH_PlayerbotUI1, SLASH_PlayerbotUI2 = '/pbotmenu', '/pbm';
local function handler(msg, editbox)
 if msg == 'go2' then
  PlayerbotUIForm1:Show();
 else
  PlayerbotUIForm:Show();
 end
end
SlashCmdList["PlayerbotUI"] = handler;


function PlayerbotUIFormEvent(argl)
    if(event == "VARIABLES_LOADED") then
        local count,label;
        if(PlayerbotUISavedVar == nil) then
            PlayerbotUISavedVar = {};
        end
        count = PlayerbotUISavedVar["count"];
        if(count == nil) then
            count = 0;
        end
        label = getglobal("PlayerbotUIForm".."CountLabel".."Label");
        label:SetText("This form has been loaded "..count.." time(s)");
        PlayerbotUISavedVar["count"] = count + 1;
    end

end            