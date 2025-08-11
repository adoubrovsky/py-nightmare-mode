--Removes composting recipes that are unneeded/avoid spoilage/are too easy voids

--disable composting recipe and removes from view
local function disableRecipe(itemName)
	RECIPE("biomass-" .. itemName):remove_unlock("compost"):set_fields{hidden = true, hidden_in_factoriopedia = true}
end

RECIPE("biomass-dried-meat"):remove_unlock("compost"):set_fields{hidden = true, hidden_in_factoriopedia = true}

--list of all composting recipes to remove with reason
local itemsToDisable = {
	"jerky", -- can now be atomized + already existing voids
	"albumin", -- decays + is not byproduct
	"agar", -- decays to biocrud
	"arqad-maggot", -- no void early on, however small enough amounts it can be stored locally
	"moss", -- if you want to get rid of moss, turn it to wood and burn it
	"urea", -- really if you make too much of this theres other problems, its consumed in reasonable quantities to justify this
	"venom-gland", -- decays
	"log", -- cut this up into wood before composting pls
	"fertilizer", -- if u have too much of this, use it to grow a plant and compost that
	"biocrud", -- use biocrud reprocessing instead
	"fungal-substrate", -- use to make some fawogae
	"fawogae-substrate", -- send to science or void into zipirs
	"rich-biocrud", -- reprocess it
}

for _, item in pairs(itemsToDisable) do
	disableRecipe(item)
end

