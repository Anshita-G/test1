describe azure_resource_group(name: 'atest') do
    it { should exist }
end

describe azure_storage_account(resource_group: 'atest', name: 'plmkobh988742')  do
        it { should exist }
    end
