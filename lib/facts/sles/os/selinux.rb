# frozen_string_literal: true

module Facter
  module Sles
    class OsSelinux
      FACT_NAME = 'os.selinux'

      def call_the_resolver
        selinux = SELinuxResolver.resolve(:enabled)

        Fact.new(FACT_NAME, build_fact_list(selinux))
      end

      def build_fact_list(selinux)
        {
          enabled: selinux
        }
      end
    end
  end
end