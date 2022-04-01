tudoo = game:service'ReplicatedStorage'

while wait() do
	if getgenv().Rebirth == true then
	tudoo.Events.Client.requestRebirth:FireServer(10, false, false)
	tudoo.Bindable.Client.Button1Up:Fire()
end
end
