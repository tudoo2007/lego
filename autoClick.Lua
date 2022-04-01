local tudoo = game:service'ReplicatedStorage'
function AutoRebirth() do
	while wait() do
		if getgenv().Rebirth == true then
		tudoo.Events.Client.requestRebirth:FireServer(10, false, false)
		tudoo.Bindable.Client.Button1Up:Fire()
	end
	end
end
AutoRebirth()


function RegularAutoClick() do
	if getgenv().RegularAutoClick == true then
		tudoo.Bindable.Client.slowAutoClickerToggle:Fire(true)
	if getgenv().RegularAutoClick == false then
		tudoo.Bindable.Client.Slow.AutoClickerToggle:Fire(false)
	end
	end
end
RegularAutoClick()
