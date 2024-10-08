from BHServer import BHServer

# Start the TCP server
server = BHServer(
	# Server Settings
	ip = "127.0.0.1",
	port = 1337,
	# Data Settings
	use_grayscale = False,
	system = "GB",
	# Client Settings
	update_interval = 5,
	speed = 100,
	rom = "Pokemon Red.gb",
	saves = {"Save/Pokemon - Red Version (USA, Europe).Gambatte.QuickSave1.State": 1}
)
server.start()


def update(self):
	# if self.client_started():
	# 	print(self.actions)
	# 	print(self.screenshots[self.actions - 1].shape)

	# actions = self.actions  # Number of times update() has been called
	# ss = self.screenshots[actions - 1]  # Grab the last screenshot (numpy.ndarray)

	# self.controls["P1 A"] = True  # Press the A button on Player 1's controller
	# x_type = self.data["x"][0]  # Get type of variable x: "INT". Set by client
	# x = self.data["x"][1]  # Get value of variable x: 512. Set by client

	# if actions == 20:
	# 	self.save_screenshots(0, actions - 1, "my_screenshot.png")
	# elif actions == 40:
	# 	self.new_episode()  # Reset the emulator, actions = 0, ++episodes
	# 	if self.episodes == 3:  # Stop client after 3 episodes
	# 		self.exit_client()
	print("update")


BHServer.update = update

print("Ready.")