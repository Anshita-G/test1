describe azure_resource_group(name: 'atst') do
    it { should exist }
end

control "storage account" do                                
    impact 1.0                                                                   
    title "Check storage account exist and its logging version"  

    describe azure_storage_account(resource_group: 'atest', name: 'plmkobh988742')  do
        it { should exist }
    end

end
