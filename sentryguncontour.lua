Hooks:PostHook(SentryGunContour, "_on_out_of_ammo_event", "CHANGEME_SentryGunContour__on_out_of_ammo_event", function(self)
    if self._unit:base():is_owner() then
        managers.chat:_receive_message(1, "Sentry Gun", "Out of Ammo", Color('00ff00'))
    end
end)