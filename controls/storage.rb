control "storage account" do                                
    impact 1.0                                                                   
    title "Check storage account exist and its logging version"  

    describe azure_storage_account(resource_group: 'a-test', name: 'plmkobh')  do
        it { should exist }
    end
    describe azure_storage_account(resource_group: 'a-test', name: 'plmkobh') do
        its('blob_properties.logging.version') { should cmp '1.0' }
    end
end
